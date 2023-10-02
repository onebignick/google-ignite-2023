# this function creates a Post table
def create_post_table(cursor):
    cursor.execute(
        """
        CREATE TABLE IF NOT EXISTS Post(
                post_id INTEGER PRIMARY KEY AUTOINCREMENT,
                post_author_id INTEGER,
                post_title TEXT NOT NULL,
                post_subtitle TEXT,
                post_content TEXT NOT NULL,
                post_time_date DATETIME NOT NULL,
                post_category_id INTEGER,
                post_type_id INTEGER NOT NULL,
                post_source TINYTEXT,
                post_read_time TINYTEXT,
                post_image_url TEXT,
                post_views INTEGER,
                post_likes INTEGER,
                post_video INTEGER NOT NULL,

                FOREIGN KEY (post_author_id) REFERENCES User(user_id),
                FOREIGN KEY (post_category_id) REFERENCES PostCategory(post_category_id),
                FOREIGN KEY (post_type_id) REFERENCES PostType(post_type_id)
        )
    """
    )
    return "Success: Post table created"


# This function loads data specified in posts into the Post table
def load_post_table(cursor, connection, posts):
    for (
        post_author_id,
        post_title,
        post_subtitle,
        post_content,
        post_time_date,
        post_category_id,
        post_type_id,
        post_source,
        post_read_time,
        post_image_url,
        post_views,
        post_likes,
        post_video,
    ) in posts:
        sql: str = """
            INSERT INTO Post(
                post_author_id,
                post_title,
                post_subtitle,
                post_content,
                post_time_date,
                post_category_id,
                post_type_id,
                post_source,
                post_read_time,
                post_image_url,
                post_views,
                post_likes,
                post_video
            ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
        """
        try:
            cursor.execute(
                sql,
                (
                    post_author_id,
                    post_title,
                    post_subtitle,
                    post_content,
                    post_time_date,
                    post_category_id,
                    post_type_id,
                    post_source,
                    post_read_time,
                    post_image_url,
                    post_views,
                    post_likes,
                    post_video,
                ),
            )
            print(f"Success: Inserted post by {post_author_id} into Post table")
        except:
            return "Error: failed to load data into Post table"
    connection.commit()
    return "Success: Loaded data into Post table"
