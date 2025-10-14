-- 1. Users
CREATE TABLE users (
    user_id UUID PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    is_verified BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL
);

-- 2. User Profiles
CREATE TABLE user_profiles (
    profile_id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    first_name TEXT,
    last_name TEXT,
    username TEXT UNIQUE,
    bio TEXT,
    location TEXT,
    dob DATE
);

-- 3. Posts
CREATE TABLE posts (
    post_id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    body TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL
);

-- 4. Post Likes
CREATE TABLE post_likes (
    post_id UUID NOT NULL,
    user_id UUID NOT NULL
);

-- 5. Post Comments
CREATE TABLE post_comments (
    comment_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id UUID NOT NULL,
    user_id UUID NOT NULL,
    body TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL
);

-- 6. Post Tags
CREATE TABLE post_tags (
    post_id UUID NOT NULL,
    tag TEXT NOT NULL
);

-- 7. Notifications
CREATE TABLE notifications (
    notification_id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    type TEXT NOT NULL,
    message TEXT NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL
);

-- 8. Messages
CREATE TABLE messages (
    message_id UUID PRIMARY KEY,
    sender_id UUID NOT NULL,
    receiver_id UUID NOT NULL,
    message_text TEXT NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL
);

-- 9. Follows
CREATE TABLE follows (
    follow_id UUID PRIMARY KEY,
    follower_id UUID NOT NULL,
    following_id UUID NOT NULL,
    created_at TIMESTAMP NOT NULL
);

-- 10. Feeds
CREATE TABLE feeds (
    feed_id UUID PRIMARY KEY,
    post_id UUID,
    user_feed_for UUID NOT NULL,
    body TEXT,
    created_at TIMESTAMP NOT NULL,
    likes_count INTEGER DEFAULT 0,
    comments_count INTEGER DEFAULT 0,
    posted_by UUID
);

-- 11. Feed Tags
CREATE TABLE feed_tags (
    feed_id UUID NOT NULL,
    tag TEXT NOT NULL
);

-- 12. Feed Likes
CREATE TABLE feed_likes (
    feed_id UUID NOT NULL,
    liked_by UUID NOT NULL
);

--13. Feed comments 
CREATE TABLE feed_comments (
    comment_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    feed_id UUID NOT NULL,
    user_id UUID NOT NULL,
    body TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL
);

--14. Feed notifications
CREATE TABLE feed_notifications (
    notification_id UUID PRIMARY KEY,
    feed_id UUID NOT NULL,
    user_id UUID NOT NULL,
    type TEXT NOT NULL,
    message TEXT NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL
);

--15. Feed messages
CREATE TABLE feed_messages (
    message_id UUID PRIMARY KEY,
    feed_id UUID NOT NULL,
    sender_id UUID NOT NULL,
    receiver_id UUID NOT NULL,
    message_text TEXT NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL
);



