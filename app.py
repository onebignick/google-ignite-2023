from flask import Flask
import sqlite3
# ---------------- END OF IMPORTS --------------------

PORT=5000
# ---------------- END OF CONSTANTS ------------------

db = sqlite3.connect("database.db")
app = Flask(__name__)

@app.route("/")
def home():
    return "<p>Hello World!</p>"

@app.route("/api/test", methods=["GET", "POST"])
def api_test(a: str) -> str:
    return f"Hello World! You sent {a}"
# ---------------- END OF APIS ------------------

if __name__ == "__main__":
    app.run(debug=True, port=PORT)