from flask import Flask, jsonify
import json
import requests
import sqlite3
# ---------------- END OF IMPORTS --------------------

PORT=5000
# ---------------- END OF CONSTANTS ------------------

db = sqlite3.connect("database.db")
app = Flask(__name__)
cur = db.cursor()

@app.route("/")
def home():
    return "<p>Hello World!</p>"

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
# ---------------- END OF APIS ------------------

if __name__ == "__main__":
    app.run(debug=True, port=PORT)