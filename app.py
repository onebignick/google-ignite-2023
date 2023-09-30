import sqlite3
from flask import Flask, jsonify, request
import json
# ---------------- END OF IMPORTS --------------------

PORT=5000
# ---------------- END OF CONSTANTS ------------------

db = sqlite3.connect("database.db")
app = Flask(__name__)
cur = db.cursor()

# test route
@app.route("/")
def home():
    return "<p>Hello World!</p>"

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