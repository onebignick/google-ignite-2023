import sqlite3
import datetime
from flask import Flask, jsonify, request
import json
# ---------------- END OF IMPORTS --------------------

PORT=5000
# ---------------- END OF CONSTANTS ------------------

db = sqlite3.connect("database.db")
app = Flask(__name__)
cur = db.cursor()

# login route
@app.route('/login', methods=["POST"])
def login():
    with sqlite3.connect("database.db") as con:
        cur = con.cursor()
        get_user_id_sql = """SELECT User(user_id, user_password) FROM User WHERE User.user_name=?"""
        result = {}
        payload = cur.execute(get_user_id_sql, (request.json["user_name"],)).fetchone()
        if payload and payload[1]==request.json["user_password"]:
            result["user_id"]=payload[0]
        return result

@app.route('/signup', methods=["POST"])
def signup():
    with sqlite3.connect("database.db") as con:
        cur = con.cursor()
        get_user_id_sql="""SELECT User(user_id) FROM User WHERE User.user_name=?"""
        payload = cur.execute(get_user_id_sql, (request.json["user_name"],))
        if not payload:
            sql = """INSERT INTO User(user_dob, user_gender, user_phone_number, user_name, user_email_address, user_password, user_image_url)"""
            cur.execute(sql,(
                request.json["user_dob"],
                request.json["user_gender"],
                request.json["user_phone_number"],
                request.json["user_name"],
                request.json["user_email_address"],
                request.json["user_password"],
                request.json["user_image_link"],
                ),
            )
            con.commit()


# test route
@app.route('/api', methods=["GET"])
def returnascii():
    d={}
    inputchr=str(request.args['query'])
    answer = str(ord(inputchr))
    d['output']=answer
    return d

# This route displays all Posts
@app.route("/api/home", methods=["GET"])
def api_home_page():
    with sqlite3.connect('database.db') as con:
        cur = con.cursor()
        sql=f"""
            SELECT Post.*, User.user_name FROM Post 
            LEFT JOIN User ON User.user_id=Post.post_author_id
            WHERE post_type_id=2
            ORDER BY Post.post_id 
            DESC
        """
        result = cur.execute(sql).fetchall()
    return result

# This route searches all posts
@app.route("/api/search", methods=["GET"])
def api_home_search():
    with sqlite3.connect("database.db") as con:
        search_query = str(request.args["query"])
        cur = con.cursor()
        sql = f"""
            SELECT Post.*, User.user_name FROM Post
            LEFT JOIN User on User.user_id=Post.post_author_id
            WHERE Post.post_title LIKE '%{search_query}%'
        """
        result = cur.execute(sql).fetchall()
    return result

@app.route("/api/createPost", methods=["POST","GET"])
def api_create_post():
    if request.method=="POST":
        with sqlite3.connect("database.db") as con:
            post_type_id_sql = """SELECT PostType(post_type_id) FROM PostType WHERE post_type=?"""
            post_type_id = cur.execute(post_type_id_sql, request.json["post_type"]).fetchone()[0]

            to_add = {
                "post_author_id": request.json["post_author_id"],
                "post_title": request.json["post_title"],
                "post_content": request.json["post_content"],
                "post_time_date": datetime.datetime.now(),
                "post_category_id": -1,
                "post_type_id": post_type_id,
                "post_source": request.json["post_source"] if request.json["post_source"] else "",
                "post_read_time": request.json["post_read_time"] if request.json["post_read_time"] else "",
                "post_image_url": request.json["post_image_url"] if request.json["post_image_url"] else "",
                "post_video": 1 if post_type_id == 7 else 0,
            }
            order = ["post_author_id", "post_title", "post_content", "post_time_date", "post_category_id", "post_type_id", "post_source", "post_read_time", "post_image_url", "post_video"]
            to_add_tuple = tuple(to_add[field] for field in order)

            sql="""
                INSERT INTO Post(post_author_id, post_title, post_content, post_time_date, post_category_id, post_type_id, post_source, post_read_time, post_image_url, post_video)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            """            
            cur.execute(sql, to_add_tuple)
            con.commit()

            if post_type_id == 3:
                comment_id = cur.execute("""SELECT seq FROM sqlite_sequence WHERE table_name=Post)""").fetchone()
                sql="""INSERT INTO Comment(comment_post, comment_post_comment) VALUES (?,?)"""
                cur.execute(sql, (request.json["parent_id"], comment_id))
        

# This route displays all articles
@app.route("/api/resources", methods=["GET"])
def api_resources_page():
    with sqlite3.connect('database.db') as con:
        cur = con.cursor()
        sql=f"""
            SELECT Post.*, User.user_name FROM Post 
            LEFT JOIN User ON User.user_id=Post.post_author_id
            WHERE post_type_id=4 OR post_type_id=5 OR post_type_id=6 OR post_type_id=7
            ORDER BY Post.post_id 
            DESC
        """
        result = cur.execute(sql).fetchall()
    return result

#
@app.route("/api/createBites", methods=["GET","POST"])
def api_createBites():
    query = """"""
    pass


# Route to get all Posts (Buzzes) from Posts
@app.route("/api/getAllBuzzes", methods=["GET","POST"])
def api_getAllBuzzes():
    query = """SELECT * FROM Posts"""
    result = cur.execute(query)
    return jsonify(result)


@app.route("/api/getBuzz", methods=["GET", "POST"])
def api_getBuzz():
    user_query = f"""SELECT UserID FROM Users WHERE Username ='{requests.json["username"]}'"""
    result = cur.execute(user_query)
    posts_query = f"""SELECT * FROM Posts WHERE UserID='{result}'"""
    result = cur.execute(posts_query)
    return result

# Start here

def get_centerType(centerType_id):
    centerType = cur.execute('SELECT * FROM centreType WHERE center_type_id = ?',
                        (centerType_id,)).fetchone()
    return centerType

def get_appointment(appointment_id):
    appointment = cur.execute('SELECT * FROM Appointment WHERE appointment_id = ?',
                        (appointment_id,)).fetchone()
    return appointment

# Retrieve all center types
@app.route('/api/allCenterTypes')
def getAllCenterTypes():
    centerTypes = cur.execute('SELECT * FROM CenterType').fetchall()
    return centerTypes

# Retrieve center type by ID
@app.route('/api/CenterType/<int:centerType_id>')
def getCenterType(centerType_id):
    centerType = get_centerType(centerType_id)
    return centerType

# Create new center type
@app.route('/api/createCenterType', methods=('GET', 'POST'))
def createCenterType():
    if request.method == 'POST':
        center_type_id = request.form['center_type_id']
        center_type = request.form['center_type']

        cur.execute('INSERT INTO CenterType (center_type_id, center_type) VALUES (?, ?)',
                    (center_type_id, center_type))
        cur.commit()
        # return redirect(url_for('index'))

    # return render_template('create.html')
    return center_type_id, center_type

# Delete center type
@app.route('/api/CenterType/<int:id>/delete', methods=('POST',))
def deleteCenterType(centerType_id):
    centerType = get_centerType(centerType_id)
    cur.execute('DELETE FROM CenterType WHERE center_type_id = ?', (centerType_id,))
    cur.commit()
    # return redirect(url_for('index'))
    return centerType

# Retrieve all appointments
@app.route('/api/allAppointments')
def getAllAppointments():
    appointments = cur.execute('SELECT * FROM Appointment').fetchall()
    return appointments

# Retrieve appointment by ID
@app.route('/api/appointment/<int:appointment_id>')
def getAppointment(appointment_id):
    appointment = get_appointment(appointment_id)
    return appointment

# Create new appointment
@app.route('/api/createAppointment', methods=('GET', 'POST'))
def createAppointment():
    if request.method == 'POST':
        appointment_id = request.form['appointment_id']
        appointment_title = request.form['appointment_title']
        appointment_date = request.form['appointment_date']

        cur.execute('INSERT INTO Appointment (appointment_id, appointment_title, appointment_date) VALUES (?, ?, ?)',
                    (appointment_id, appointment_title, appointment_date))
        cur.commit()
        # return redirect(url_for('index'))

    # return render_template('create.html')
    return appointment_id, appointment_title, appointment_date

# Update appointment
@app.route('/api/appointment/<int:appointment_id>/update', methods=('GET', 'POST'))
def updateAppointment(appointment_id):
    appointment = get_appointment(appointment_id)

    if request.method == 'POST':
        appointment_title = request.form['appointment_title']
        appointment_date = request.form['appointment_date']

        cur.execute('UPDATE posts SET appointment_title = ?, appointment_date = ?'
                    ' WHERE appointment_id = ?',
                    (appointment_title, appointment_date, appointment_id))
        cur.commit()
        # return redirect(url_for('index'))

    return appointment

# Delete appointment
@app.route('/appi/appointment/<int:appointment_id>/delete', methods=('POST',))
def deleteAppointment(appointment_id):
    appointment = get_appointment(appointment_id)
    cur.execute('DELETE FROM Appointment WHERE appointment_id = ?', (appointment_id,))
    cur.commit()
    print('"{}" was successfully deleted!'.format(appointment['appointment_id']))
    return appointment
# ---------------- END OF APIS ------------------

if __name__ == "__main__":
    app.run(debug=True, port=PORT)