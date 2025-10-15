Project File Structure & Descriptions :-


1. Seed/Data Files


feed1.sql, posts_seed.sql, user_profiles_seed.sql, follows_seed.sql, users_seed.sql, messages_seed.sql, notifications_seed.sql
SQL scripts to seed the PostgreSQL database with sample social media data such as feeds, posts, profiles, follows, users, messages, and notifications.


2. Data (JSON)


feed1.json, posts.json, user_profiles.json, follow.json, message.json, notification.json, users.json
Sample social media data in JSON format, useful for NoSQL imports, backup, or debugging.


3. Python Utilities/Scripts


feed1.py, follows.py, posts.py, messages.py, notifications.py, user_profiles.py, users.py
Python scripts to generate, parse, or manipulate data, or automate tasks like exporting/importing between formats.


4. SQL Schema/Utils


drop.sql
Script to drop existing database tables for cleanup or reset purposes.


5. schema.sql


Database schema definition for all tables required by the social media app.


6. Documentation


readme.md
Main documentation, explaining project purpose, setup instructions, and descriptions for each code/data file.


Commands.md
Lists useful commands/CLI operations for interacting with the application or database


7. ORDER OF RUNNING THESE FILES


a. run the drop.sql file to drop all tables if they exist

b. run schema.sql to create these tables

c. run .sql files directly to fill up the database, no need to run .py files, those were used only for conversion from json to sql commands





