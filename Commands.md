1. Command For dropping the schema: 

C:\Users\sid\OneDrive\Desktop\Study and Work Mega Folder\Projects\SQL vS NO SQL\social_media_postgre>psql -U postgres -d social_media_app -f "exports/drop.sql"



2. Command for posts script to generate post:

    python generate_seed.py
    python fix_uuids.py


3. To move out of a folder

    cd ..


4. to move into a folder

    cd folder_name


5.   to execute filename.sql file

       psql -U postgres -d social_media_app -filename.sql


6.       Run file1name.py to get create file2name.sql

       python file1name.py

      




7.   To view table data vertically and limit it to 5 rows in PostgreSQL, use this command inside psql 


\x on
SELECT * FROM notifications LIMIT 5