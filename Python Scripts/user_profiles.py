import json
import uuid
from datetime import datetime
import os

def fix_uuid(oid):
    return str(uuid.UUID(oid.ljust(32, '0')))

# Load user_profiles.json from current folder
with open("user_profiles.json", "r") as f:
    profiles = json.load(f)

profiles_sql = []

for profile in profiles:
    profile_id = fix_uuid(profile["_id"]["$oid"])
    user_id = fix_uuid(profile["user_id"]["$oid"])
    first_name = profile["first_name"].replace("'", "''")
    last_name = profile["last_name"].replace("'", "''")
    username = profile["username"].replace("'", "''")
    bio = profile.get("bio", "").replace("'", "''")
    location = profile.get("location", "").replace("'", "''")
    dob = datetime.fromisoformat(profile["dob"]["$date"].replace("Z", "+00:00")).date()

    profiles_sql.append(f"""INSERT INTO user_profiles (
        profile_id, user_id, first_name, last_name, username, bio, location, dob
    ) VALUES (
        '{profile_id}', '{user_id}', '{first_name}', '{last_name}', '{username}', '{bio}', '{location}', '{dob}'
    );""")

# Save to user_profiles_seed.sql in current folder
with open("user_profiles_seed.sql", "w") as f:
    f.write("\n".join(profiles_sql))

print(" user_profiles_seed.sql generated at:", os.path.abspath("user_profiles_seed.sql"))
