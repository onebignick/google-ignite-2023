def load_user_table(cursor, connection, users):
    for user_dob, user_gender, user_phone_number, user_name, user_email_address, user_password in users:
        sql="""
            INSERT INTO User(
                user_dob,
                user_gender,
                user_phone_number,
                user_name,
                user_email_address,
                user_password
            ) VALUES (?,?,?,?,?,?)
        """
        cursor.execute(sql,(user_dob, user_gender, user_phone_number, user_name, user_email_address, user_password))
    connection.commit()
    return