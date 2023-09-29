import sqlite3
from flask import Flask, jsonify, request
import json
# ---------------- END OF IMPORTS --------------------

PORT=5000
# ---------------- END OF CONSTANTS ------------------

db = sqlite3.connect("database.db")
app = Flask(__name__)
cur = db.cursor()

@app.route("/")
def home():
    return "<p>Hello World!</p>"

@app.route('/api', methods=["GET"])
def returnascii():
    d={}
    inputchr=str(request.args['query'])
    answer = str(ord(inputchr))
    d['output']=answer
    return d

# Route to test flutter with api
@app.route("/api/test", methods=["GET", "POST"])
def api_test(a: str) -> str:
    return f"Hello World! You sent {a}"

# Route to retrieve all the profiessional articles in database
@app.route("/api/getAllBites", methods=["GET", "POST"])
def api_getAllBites():
    """Retrieves all the articles in articles"""

    query = """SELECT * FROM Articles"""
    result = cur.execute(query)
    return jsonify(result)


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
    centerType = cur.execute('SELECT * FROM centreType WHERE id = ?',
                        (centerType_id,)).fetchone()
    return centerType

@app.route('/api/AllCenterTypes')
def getAllCenterTypes():
    centerTypes = cur.execute('SELECT * FROM CenterType').fetchall()
    return centerTypes

@app.route('/api/CenterType/<int:centerType_id>')
def getCenterType(centerType_id):
    centerType = get_centerType(centerType_id)
    return centerType

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

@app.route('/api/CenterType/<int:id>/delete', methods=('POST',))
def deleteCenterType(centerType_id):
    centerType = get_centerType(centerType_id)
    cur.execute('DELETE FROM CenterType WHERE center_type_id = ?', (centerType_id,))
    cur.commit()
    # return redirect(url_for('index'))
    return centerType
# ---------------- END OF APIS ------------------

if __name__ == "__main__":
    app.run(debug=True, port=PORT)