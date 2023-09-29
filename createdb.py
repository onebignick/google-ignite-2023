import sqlite3

db = sqlite3.connect("database.db")
cur = db.cursor()

# this function creates a table called CenterType
cur.execute("""
    CREATE TABLE IF NOT EXISTS CenterType(
        center_type_id INTEGER PRIMARY KEY AUTOINCREMENT,
        center_type TINYTEXT NOT NULL
    )
""")

# this function loads clinic types into the database
center_types = ["clinic","hospital"]
for center_type in center_types:
    sql = "INSERT INTO CenterType(center_type) VALUES (?)"
    cur.execute(sql, (center_type,))
db.commit()

# this function creates a table called Center
cur.execute("""
    CREATE TABLE IF NOT EXISTS Center(
            center_id INTEGER PRIMARY KEY AUTOINCREMENT,
            center_name TINYTEXT NOT NULL,
            center_location TINYTEXT NOT NULL,
            center_phone_number TINYTEXT,
            center_type_id INTEGER,

            FOREIGN KEY (center_type_id) REFERENCES CenterType(center_type_id)
    )
""")

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

cur.close()
