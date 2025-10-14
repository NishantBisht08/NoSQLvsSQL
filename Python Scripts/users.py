import json
import uuid
from datetime import datetime
import os

def fix_uuid(oid):
    # Pad 24-char MongoDB ObjectID to 32 chars and convert to UUID
    return str(uuid.UUID(oid.ljust(32, '0')))

# Load users.json from current folder
with open("users.json", "r") as f:
    users = json.load(f)

users_sql = []

for user in users:
    user_id = fix_uuid(user["_id"]["$oid"])
    email = user["email"].replace("'", "''")
    password = user["password"].replace("'", "''")
    role = user.get("role", "member")
    is_verified = 'TRUE' if user.get("is_verified", False) else 'FALSE'
    created_at = datetime.fromisoformat(user["created_at"]["$date"].replace("Z", "+00:00"))

    users_sql.append(f"""INSERT INTO users (
        user_id, email, password, role, is_verified, created_at
    ) VALUES (
        '{user_id}', '{email}', '{password}', '{role}', {is_verified}, '{created_at}'
    );""")

# Save to users_seed.sql in current folder
with open("users_seed.sql", "w") as f:
    f.write("\n".join(users_sql))

print(" users_seed.sql generated at:", os.path.abspath("users_seed.sql"))
