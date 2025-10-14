import json
import uuid
from datetime import datetime
import os

def fix_uuid(oid):
    return str(uuid.UUID(oid.ljust(32, '0')))

# Load follows.json
with open("follow.json", "r") as f:
    follows = json.load(f)

follows_sql = []

for follow in follows:
    follow_id = fix_uuid(follow["_id"]["$oid"])
    follower_id = fix_uuid(follow["follower_id"]["$oid"])
    following_id = fix_uuid(follow["following_id"]["$oid"])
    created_at = datetime.fromisoformat(follow["created_at"]["$date"].replace("Z", "+00:00"))

    follows_sql.append(f"""INSERT INTO follows (
        follow_id, follower_id, following_id, created_at
    ) VALUES (
        '{follow_id}', '{follower_id}', '{following_id}', '{created_at}'
    );""")

# Save to follows_seed.sql
with open("follows_seed.sql", "w") as f:
    f.write("\n".join(follows_sql))

print(" follows_seed.sql generated at:", os.path.abspath("follows_seed.sql"))
