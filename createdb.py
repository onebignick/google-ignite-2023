import sqlite3

db = sqlite3.connect("database.db")
cur = db.cursor()

cur.execute("""
    CREATE TABLE IF NOT EXISTS Users(
        UserID INTEGER PRIMARY KEY AUTOINCREMENT
    )
""")

cur.execute("""
    CREATE TABLE IF NOT EXISTS Posts(
        PostID INTEGER PRIMARY KEY AUTOINCREMENT
    )
""")

cur.execute("""
    CREATE TABLE IF NOT EXISTS Comments(
        PostID INTEGER PRIMARY KEY AUTOINCREMENT
    )
""")

cur.close()
