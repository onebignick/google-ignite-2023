def create_center_type_table(cursor) -> str:
    """
    This function creates a table called CenterType

    CenterType {
        center_type_id: int
        center_type:    str
    }
    """
    sql: str = """
        CREATE TABLE IF NOT EXISTS CenterType(
            center_type_id INTEGER PRIMARY KEY AUTOINCREMENT,
            center_type TINYTEXT NOT NULL
        )
        """
    try:
        cursor.execute(sql)
        return "Success: CenterType table created"
    except:
        return "Error: Failed to create CenterType table"
    
def load_center_type_table(connection, cursor, center_types: list) -> str:
    for center_type in center_types:
        try:
            sql: str = "INSERT INTO CenterType(center_type) VALUES (?)"
            cursor.execute(sql, (center_type,))
            print(f"Success: Inserted {center_type} into CenterType table")
        except:
            return f"Error: Failed to insert {center_type} into CenterType table"
    connection.commit()
    return "Success: Loaded data into CenterType table"