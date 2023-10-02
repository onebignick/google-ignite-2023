import datetime
import importlib

requirements=[
    "sqlite3",
    "tables.center",
    "tables.center_type",
    "tables.post",
    "tables.user"
]
imported_libs = {lib: importlib.import_module(lib) for lib in requirements}
# ----------------------------END OF IMPORTS ---------------------

CENTER_TYPES=["clinic","hospital"]

USERS=[
    ("1900-01-01","m","11111111","handymandy","handy@mandy.com","root"),
    ("1900-01-01","f","11111111","immaxis","imm@axis.com","root"),
]

POSTS=[
    (1,"First time caregiver tips","I'm overwhelmed because I feel like I'm doing everything wrong", datetime.datetime.now(),1,2,"","","https://static.wikia.nocookie.net/no-game-no-life/images/d/dc/Shiro_Anime_HQ.png/revision/latest?cb=20210523001016",0),
    (1,"Daily Home Care","Lorum ipsum dolor sit amen", datetime.datetime.now(),1,4,"","","https://static.wikia.nocookie.net/no-game-no-life/images/d/dc/Shiro_Anime_HQ.png/revision/latest?cb=20210523001016",0),
    (1,"All about Dementia", "What is dementia, dementia affects the brain, resulting in memory loss.", datetime.datetime.now(),1,5,"","","https://static.wikia.nocookie.net/no-game-no-life/images/d/dc/Shiro_Anime_HQ.png/revision/latest?cb=20210523001016",0),
    (1,"This is a review","Lorum ipsum dolor sit amen", datetime.datetime.now(),1,6,"","","https://static.wikia.nocookie.net/no-game-no-life/images/d/dc/Shiro_Anime_HQ.png/revision/latest?cb=20210523001016",0),
    (1,"360 Degree Virtual Reality Dementia-Friendly HDB Home Design Guide", "https://www.youtube.com/watch?v=dQw4w9WgXcQ", datetime.datetime.now(),1,7,"","","https://static.wikia.nocookie.net/no-game-no-life/images/d/dc/Shiro_Anime_HQ.png/revision/latest?cb=20210523001016",1),
]

POST_CATEGORY=[]
# ----------------------------END OF CONSTANTS ---------------------

db = imported_libs["sqlite3"].connect("database.db")
cur = db.cursor()
# ----------------------------END OF MIDDLEWARE -----------------------

# this function creates a table called CenterType
print(imported_libs["tables.center_type"].create_center_type_table(cursor=cur))

# this function loads the CenterType table with the variables defined in CENTER_TYPES
print(imported_libs["tables.center_type"].load_center_type_table(cursor=cur, connection=db, center_types=CENTER_TYPES))

# this function creates a table called Center
print(imported_libs["tables.center"].create_center_table(cursor=cur))

# this function creates a table called Appointment
cur.execute("""
    CREATE TABLE IF NOT EXISTS Appointment(
            appointment_id INTEGER PRIMARY KEY AUTOINCREMENT,
            appointment_title TINYTEXT NOT NULL,
            appointment_date DATETIME NOT NULL
    )
""")

# this function creates a table called Medication
cur.execute("""
    CREATE TABLE IF NOT EXISTS Medication(
            medication_id INTEGER PRIMARY KEY AUTOINCREMENT,
            medication_name TINY TEXT NOT NULL
    )
""")

# this function creates a table called Prescription
cur.execute("""
    CREATE TABLE IF NOT EXISTS Prescription(
            prescription_id INTEGER PRIMARY KEY AUTOINCREMENT,
            prescription_date DATETIME NOT NULL,
            prescription_description TEXT,
            prescription_doctor_id INTEGER NOT NULL,
            prescription_center_id INTEGER NOT NULL,

            FOREIGN KEY (prescription_center_id) REFERENCES Center(center_id)
    )
""")

# this function creates a table called PrescriptionMedication
cur.execute("""
    CREATE TABLE IF NOT EXISTS PrescriptionMedication(
            prescription_medication_id INTEGER PRIMARY KEY AUTOINCREMENT,
            prescription_id INTEGER,
            medication_id INTEGER,
            prescription_medication_amount INTEGER NOT NULL,
            prescription_medication_times_a_day INTEGER NOT NULL,

            FOREIGN KEY (prescription_id) REFERENCES Prescription(prescription_id),
            FOREIGN KEY (medication_id) REFERENCES Medication(medication_id)
    )
""")

#this function creates a table called User
cur.execute("""
    CREATE TABLE IF NOT EXISTS User(
            user_id INTEGER PRIMARY KEY AUTOINCREMENT,
            user_dob DATE NOT NULL,
            user_gender TINYTEXT,
            user_phone_number TINYTEXT,
            user_name TINYTEXT,
            user_email_address TINYTEXT NOT NULL UNIQUE,
            user_password TINYTEXT NOT NULL
    )
""")

# this function loads the user table with some dummy values
print(imported_libs["tables.user"].load_user_table(cursor=cur,connection=db,users=USERS))

# this function creates a table called PostCategory
cur.execute("""
    CREATE TABLE IF NOT EXISTS PostCategory(
            post_category_id INTEGER PRIMARY KEY AUTOINCREMENT,
            post_category_name TINYTEXT NOT NULL
    )
""")

# this function creates a table called PostType
cur.execute("""
    CREATE TABLE IF NOT EXISTS PostType(
            post_type_id INTEGER PRIMARY KEY AUTOINCREMENT,
            post_type TINYTEXT NOT NULL
    )
""")

# this function loads pre-defined post types into PostTypes
post_types = ["bites", "buzz", "comment","guide","article","review","video"]
for post_type in post_types:
    sql = "INSERT INTO PostType(post_type) VALUES (?)"
    cur.execute(sql, (post_type,))
db.commit()

# this function creates a table called Post
print(imported_libs["tables.post"].create_post_table(cursor=cur))

# This function loads dummy data into the Post table
print(imported_libs["tables.post"].load_post_table(cursor=cur, connection=db, posts=POSTS))

# this function creates a table called Comment
cur.execute("""
    CREATE TABLE IF NOT EXISTS Comment(
            comment_id INTEGER PRIMARY KEY AUTOINCREMENT,
            comment_post INTEGER NOT NULL,
            comment_post_comment INTEGER NOT NULL,

            FOREIGN KEY (comment_post) REFERENCES Post(post_id),
            FOREIGN KEY (comment_post_comment) REFERENCES Post(post_id)
    )
""")

# this function creates a table called WorkshopTopic
cur.execute("""
    CREATE TABLE IF NOT EXISTS WorkshopTopic(
            workshop_topic_id INTEGER PRIMARY KEY AUTOINCREMENT,
            workshop_topic_name TINYTEXT NOT NULL
    )
""")

# this function creates a table called WorkshopLessonType
cur.execute("""
    CREATE TABLE IF NOT EXISTS WorkshopLessonTopic(
            workshop_lesson_topic_id INTEGER PRIMARY KEY AUTOINCREMENT,
            workshop_lesson_topic TINYTEXT NOT NULL
    )
""")

# this function creates a table called Workshop
cur.execute("""
    CREATE TABLE IF NOT EXISTS Workshop(
            workshop_id INTEGER PRIMARY KEY AUTOINCREMENT,
            workshop_title TINYTEXT NOT NULL,
            workshop_organizer_id INTEGER NOT NULL,
            workshop_topic_id INTEGER NOT NULL,
            workshop_date DATETIME NOT NULL,
            workshop_lesson_type_id INTEGER NOT NULL,
            workshop_subsidies INTEGER NOT NULL,
            workshop_description TEXT,
            workshop_registration_link TEXT NOT NULL,
            workshop_phone_number TINYTEXT,
            workshop_location TINYTEXT,
            workshop_website TINYTEXT,

            FOREIGN KEY (workshop_organizer_id) REFERENCES User(user_id),
            FOREIGN KEY (workshop_topic_id) REFERENCES WorkshopTopic(workshop_topic_id),
            FOREIGN KEY (workshop_lesson_type_id) REFERENCES WorkshopLessonType(workshop_lesson_type_id)
    )
""")

cur.close()
