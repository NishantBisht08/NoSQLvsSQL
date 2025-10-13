import json
import re
import uuid
from datetime import datetime
import os

def fix_uuid(oid):
    return str(uuid.UUID(oid.ljust(32, '0')))

# Load posts.json
with open(r'C:\Users\sid\OneDrive\Desktop\Study and Work Mega Folder\Projects\SQL vS NO SQL\social_media_postgre\exports\posts.json') as f:
    data = json.load(f)

raw_sql = []

for post in data:
    post_id = post['_id']['$oid']
    user_id = post['user_id']['$oid']
    body = post['body'].replace("'", "''")
    created_at = post['created_at']['$date'].replace('T', ' ').replace('Z', '')

    raw_sql.append(f"INSERT INTO posts (post_id, user_id, body, created_at) VALUES ('{post_id}', '{user_id}', '{body}', '{created_at}');")

    for like in post.get('likes', []):
        raw_sql.append(f"INSERT INTO post_likes (post_id, user_id) VALUES ('{post_id}', '{like['$oid']}');")

    for comment in post.get('comments', []):
        comment_user = comment['user_id']['$oid']
        comment_body = comment['body'].replace("'", "''")
        comment_time = comment['created_at']['$date'].replace('T', ' ').replace('Z', '')
        raw_sql.append(f"INSERT INTO post_comments (post_id, user_id, body, created_at) VALUES ('{post_id}', '{comment_user}', '{comment_body}', '{comment_time}');")

    for tag in post.get('tags', []):
        raw_sql.append(f"INSERT INTO post_tags (post_id, tag) VALUES ('{post_id}', '{tag}');")

# Normalize UUIDs
uuid_pattern = re.compile(r"'([0-9a-fA-F]{24})'")
final_sql = []

for line in raw_sql:
    matches = uuid_pattern.findall(line)
    for match in matches:
        padded = match.ljust(32, '0')
        formatted_uuid = str(uuid.UUID(padded))
        line = line.replace(f"'{match}'", f"'{formatted_uuid}'")
    final_sql.append(line)

# Save to posts_seed.sql
with open("posts_seed.sql", "w") as f:
    f.write("\n".join(final_sql))

print("posts_seed.sql generated at:", os.path.abspath("posts_seed.sql"))
