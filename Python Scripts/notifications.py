import json
import uuid
from datetime import datetime
import os

def fix_uuid(oid):
    # Pad to 32 chars if necessary and convert to UUID
    if not oid:
        return None
    return str(uuid.UUID(oid.ljust(32, '0'))) if len(oid) < 32 else str(uuid.UUID(oid))

with open("notification.json", "r", encoding="utf-8") as f:
    notifications = json.load(f)

notifications_sql = []

for notif in notifications:
    notification_id = fix_uuid(notif["_id"]["$oid"])
    user_id = fix_uuid(notif["user_id"]["$oid"])
    notif_type = notif.get("type", "")
    message = notif.get("message", "")
    is_read = 'TRUE' if notif.get("is_read", False) else 'FALSE'
    created_at_raw = notif.get("created_at", {}).get("$date")
    created_at = datetime.fromisoformat(created_at_raw.replace("Z", "+00:00")) if created_at_raw else None
    created_at_val = f"'{created_at}'" if created_at else 'NULL'

    notifications_sql.append(f"""INSERT INTO notifications (
        notification_id, user_id, type, message, is_read, created_at
    ) VALUES (
        '{notification_id}', '{user_id}', '{notif_type}', '{message}', {is_read}, {created_at_val}
    );""")

with open("notifications_seed.sql", "w", encoding="utf-8") as f:
    f.write("\n".join(notifications_sql))

print("notifications_seed.sql generated at:", os.path.abspath("notifications_seed.sql"))
