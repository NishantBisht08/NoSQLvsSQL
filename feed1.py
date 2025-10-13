import json
import uuid
from datetime import datetime
import os

def fix_uuid(oid):
    if not oid:
        return None
    return str(uuid.UUID(oid.ljust(32, '0'))) if len(oid) < 32 else str(uuid.UUID(oid))

def extract_oid(obj, key="$oid"):
    if isinstance(obj, dict) and key in obj:
        return obj[key]
    return None

def extract_posted_by(field):
    if not field:
        return None
    if "_id" in field and "$oid" in field["_id"]:
        return field["_id"]["$oid"]
    return field.get("$oid")

with open("feed1.json", "r", encoding="utf-8") as f:
    feeds = json.load(f)

all_sql = []

for feed in feeds:
    # feeds table
    feed_id = fix_uuid(extract_oid(feed.get("_id")))
    post_id = fix_uuid(extract_oid(feed.get("post_id")))
    user_feed_for = fix_uuid(extract_oid(feed.get("user_feed_for")))
    posted_by = fix_uuid(extract_posted_by(feed.get("posted_by")))
    body = feed.get("body", "") or ""
    created_at_raw = feed.get("created_at", {}).get("$date")
    created_at = None
    if created_at_raw:
        # ISO format with timezone
        if created_at_raw.endswith("Z"):
            created_at = datetime.fromisoformat(created_at_raw.replace("Z", "+00:00"))
        else:
            created_at = datetime.fromisoformat(created_at_raw)
    likes_count = int(feed.get("likes_count", 0))
    comments_count = int(feed.get("comments_count", 0))
    all_sql.append(f"""INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '{feed_id}', {f"'{post_id}'" if post_id else 'NULL'}, '{user_feed_for}', {json.dumps(body)}, {f"'{created_at}'" if created_at else 'NULL'}, {likes_count}, {comments_count}, {f"'{posted_by}'" if posted_by else 'NULL'}
    );""")

    # feed_tags
    for tag in feed.get("tags", []):
        all_sql.append(f"INSERT INTO feed_tags (feed_id, tag) VALUES ('{feed_id}', {json.dumps(tag)});")

    # feed_likes
    for like in feed.get("likes", []):
        liked_by = fix_uuid(extract_oid(like))
        if liked_by:
            all_sql.append(f"INSERT INTO feed_likes (feed_id, liked_by) VALUES ('{feed_id}', '{liked_by}');")

    # feed_comments
    for comment in feed.get("comments", []):
        comment_id = uuid.uuid4()
        user_id = fix_uuid(extract_oid(comment.get("user_id")))
        comment_body = comment.get("body", "")
        c_created = comment.get("created_at", {}).get("$date")
        c_created_val = None
        if c_created:
            if c_created.endswith("Z"):
                c_created_val = datetime.fromisoformat(c_created.replace("Z", "+00:00"))
            else:
                c_created_val = datetime.fromisoformat(c_created)
        if feed_id and user_id:
            all_sql.append(f"""INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('{comment_id}', '{feed_id}', '{user_id}', {json.dumps(comment_body)}, {f"'{c_created_val}'" if c_created_val else 'NULL'});""")

    # feed_notifications
    for notif in feed.get("notifications", []):
        notification_id = uuid.uuid4()
        user_id = fix_uuid(extract_oid(notif.get("user_id")))
        notif_type = notif.get("type", "")
        message = notif.get("message", "")
        is_read = 'TRUE' if notif.get("is_read", False) else 'FALSE'
        n_created = notif.get("created_at", {}).get("$date")
        n_created_val = None
        if n_created:
            if n_created.endswith("Z"):
                n_created_val = datetime.fromisoformat(n_created.replace("Z", "+00:00"))
            else:
                n_created_val = datetime.fromisoformat(n_created)
        if feed_id and user_id:
            all_sql.append(f"""INSERT INTO feed_notifications (notification_id, feed_id, user_id, type, message, is_read, created_at)
            VALUES ('{notification_id}', '{feed_id}', '{user_id}', {json.dumps(notif_type)}, {json.dumps(message)}, {is_read}, {f"'{n_created_val}'" if n_created_val else 'NULL'});""")

    # feed_messages
    for msg in feed.get("messages", []):
        message_id = uuid.uuid4()
        sender_id = fix_uuid(extract_oid(msg.get("sender_id")))
        receiver_id = fix_uuid(extract_oid(msg.get("receiver_id")))
        message_text = msg.get("message_text", "")
        is_read = 'TRUE' if msg.get("is_read", False) else 'FALSE'
        m_created = msg.get("created_at", {}).get("$date")
        m_created_val = None
        if m_created:
            if m_created.endswith("Z"):
                m_created_val = datetime.fromisoformat(m_created.replace("Z", "+00:00"))
            else:
                m_created_val = datetime.fromisoformat(m_created)
        if feed_id and sender_id and receiver_id:
            all_sql.append(f"""INSERT INTO feed_messages (message_id, feed_id, sender_id, receiver_id, message_text, is_read, created_at)
            VALUES ('{message_id}', '{feed_id}', '{sender_id}', '{receiver_id}', {json.dumps(message_text)}, {is_read}, {f"'{m_created_val}'" if m_created_val else 'NULL'});""")

with open("feed1.sql", "w", encoding="utf-8") as f:
    f.write("\n".join(all_sql))

print("feed1.sql generated at:", os.path.abspath("feed1.sql"))
