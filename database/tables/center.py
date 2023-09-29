def create_center_table(cursor) -> str:
    """
    This function creates a table called Center

    Center {
        center_id:           int
        center_name:         str
        center_location:     str
        center_phone_number: str
        center_type_id:      int
    }
    """
    sql: str = """
        CREATE TABLE IF NOT EXISTS Center(
                center_id INTEGER PRIMARY KEY AUTOINCREMENT,
                center_name TINYTEXT NOT NULL,
                center_location TINYTEXT NOT NULL,
                center_phone_number TINYTEXT,
                center_type_id INTEGER,

                FOREIGN KEY (center_type_id) REFERENCES CenterType(center_type_id)
        )
        """
    try:
        cursor.execute(sql)
        return "Success: Center table created"
    except:
        return "Error: Failed to create Center table"