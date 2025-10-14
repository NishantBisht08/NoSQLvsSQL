import json
import uuid
from datetime import datetime
import os

def fix_uuid(oid):
    return str(uuid.UUID(oid.ljust(32, '0')))

# Load messages.json
with open("message.json", "r") as f:
    messages = json.load(f)

messages_sql = []

for msg in messages:
    message_id = fix_uuid(msg["_id"]["$oid"])
    sender_id = fix_uuid(msg["sender_id"]["$oid"])
    receiver_id = fix_uuid(msg["receiver_id"]["$oid"])
    message_text = msg["message_text"].replace("'", "''")
    is_read = 'TRUE' if msg.get("is_read", False) else 'FALSE'
    created_at = datetime.fromisoformat(msg["created_at"]["$date"].replace("Z", "+00:00"))

    messages_sql.append(f"""INSERT INTO messages (
        message_id, sender_id, receiver_id, message_text, is_read, created_at
    ) VALUES (
        '{message_id}', '{sender_id}', '{receiver_id}', '{message_text}', {is_read}, '{created_at}'
    );""")

# Save to messages_seed.sql
with open("messages_seed.sql", "w") as f:
    f.write("\n".join(messages_sql))

print(" messages_seed.sql generated at:", os.path.abspath("messages_seed.sql"))
