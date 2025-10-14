INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2be00000000', '68e4c90d-215d-a4a4-ccce-c3d700000000', '671b0000-0000-0000-0000-010100000000', 'Post #140: Shared a new guide on setting up CI/CD pipelines using AWS Lambda.', '2025-10-07 08:02:21.109000+00:00', 2, 0, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2be00000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2be00000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2be00000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2be00000000', '671b0000-0000-0000-0000-010700000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2be00000000', '671b0000-0000-0000-0000-010600000000');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2bf00000000', '68e4c90d-215d-a4a4-ccce-c3d100000000', '671b0000-0000-0000-0000-010100000000', 'Post #134: Exploring new social media features.', '2025-10-07 08:02:21.100000+00:00', 2, 0, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2bf00000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2bf00000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2bf00000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2bf00000000', '671b0000-0000-0000-0000-010600000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2bf00000000', '671b0000-0000-0000-0000-010300000000');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2c000000000', '68e4c90d-215d-a4a4-ccce-c3ba00000000', '671b0000-0000-0000-0000-010100000000', 'Post #111: Exploring new social media features.', '2025-10-07 08:02:21.058000+00:00', 2, 0, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c000000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c000000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c000000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c000000000', '671b0000-0000-0000-0000-010500000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c000000000', '671b0000-0000-0000-0000-010600000000');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2c100000000', '68e4c90d-215d-a4a4-ccce-c3b500000000', '671b0000-0000-0000-0000-010100000000', 'Post #106: Simple ingredients, pure magic. Full recipe in comments!', '2025-10-07 08:02:21.044000+00:00', 2, 3, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c100000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c100000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c100000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c100000000', '671b0000-0000-0000-0000-010400000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c100000000', '671b0000-0000-0000-0000-010200000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('cbb1afce-3944-4730-839b-5bc737d2fc69', '68e4ceb2-4e50-693c-fbce-c2c100000000', '671b0000-0000-0000-0000-010300000000', 'Interesting perspective.', '2025-10-07 08:07:32.667000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('2d8e5214-028e-4275-968f-e18608db4685', '68e4ceb2-4e50-693c-fbce-c2c100000000', '671b0000-0000-0000-0000-010600000000', 'Thanks for sharing.', '2025-10-07 08:07:32.667000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('174a8883-65e0-4c57-8a9e-12ac1ea90b27', '68e4ceb2-4e50-693c-fbce-c2c100000000', '671b0000-0000-0000-0000-010800000000', 'Great content!', '2025-10-07 08:07:32.667000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2c200000000', '68e4c90d-215d-a4a4-ccce-c3b400000000', '671b0000-0000-0000-0000-010100000000', 'Post #105: Sharing my thoughts about tech.', '2025-10-07 08:02:21.043000+00:00', 4, 3, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c200000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c200000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c200000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c200000000', '671b0000-0000-0000-0000-010100000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c200000000', '671b0000-0000-0000-0000-010300000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c200000000', '671b0000-0000-0000-0000-010500000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c200000000', '671b0000-0000-0000-0000-010600000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('d3f3ecb9-d73d-4850-a9a6-5e5d080446c5', '68e4ceb2-4e50-693c-fbce-c2c200000000', '671b0000-0000-0000-0000-010500000000', 'This is helpful.', '2025-10-07 08:07:32.664000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('e338ec0e-e59e-4af7-ba74-975711f0cd03', '68e4ceb2-4e50-693c-fbce-c2c200000000', '671b0000-0000-0000-0000-010700000000', 'Thanks for sharing.', '2025-10-07 08:07:32.664000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('3f9a4bf0-0409-40b0-904c-6d0e4288d694', '68e4ceb2-4e50-693c-fbce-c2c200000000', '671b0000-0000-0000-0000-010700000000', 'Thanks for sharing.', '2025-10-07 08:07:32.664000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2c300000000', '68e4c90d-215d-a4a4-ccce-c3ac00000000', '671b0000-0000-0000-0000-010100000000', 'Post #97: Learning MongoDB today!', '2025-10-07 08:02:21.030000+00:00', 2, 1, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c300000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c300000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c300000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c300000000', '671b0000-0000-0000-0000-010300000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c300000000', '671b0000-0000-0000-0000-010400000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('8bbb5c3a-48f4-4a34-9cb7-4f1aa75fa661', '68e4ceb2-4e50-693c-fbce-c2c300000000', '671b0000-0000-0000-0000-010700000000', 'Loved this!', '2025-10-07 08:07:32.642000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2c400000000', '68e4c90d-215d-a4a4-ccce-c3a900000000', '671b0000-0000-0000-0000-010100000000', 'Post #94: Shared a new guide on setting up CI/CD pipelines using AWS Lambda.', '2025-10-07 08:02:21.026000+00:00', 3, 3, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c400000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c400000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c400000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c400000000', '671b0000-0000-0000-0000-010600000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c400000000', '671b0000-0000-0000-0000-010800000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c400000000', '671b0000-0000-0000-0000-010100000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('05064b7a-ecac-4f5e-a649-bcde77cd9658', '68e4ceb2-4e50-693c-fbce-c2c400000000', '671b0000-0000-0000-0000-010600000000', 'This is helpful.', '2025-10-07 08:07:32.635000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('55c09c75-41fd-48be-8aa1-43715e93c6ca', '68e4ceb2-4e50-693c-fbce-c2c400000000', '671b0000-0000-0000-0000-010800000000', 'This is helpful.', '2025-10-07 08:07:32.635000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('deb020ac-a82a-4bc4-9840-f108818e62f0', '68e4ceb2-4e50-693c-fbce-c2c400000000', '671b0000-0000-0000-0000-010600000000', 'This is helpful.', '2025-10-07 08:07:32.635000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2c500000000', '68e4c90d-215d-a4a4-ccce-c3a700000000', '671b0000-0000-0000-0000-010100000000', 'Post #92: Check out my latest project.', '2025-10-07 08:02:21.023000+00:00', 1, 1, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c500000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c500000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c500000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c500000000', '671b0000-0000-0000-0000-010200000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('bd769cda-846f-48fc-ba28-50aac360f21a', '68e4ceb2-4e50-693c-fbce-c2c500000000', '671b0000-0000-0000-0000-010700000000', 'Interesting perspective.', '2025-10-07 08:07:32.630000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2c600000000', '68e4c90d-215d-a4a4-ccce-c3a500000000', '671b0000-0000-0000-0000-010100000000', 'Post #90: A quick update from me.', '2025-10-07 08:02:21.020000+00:00', 0, 0, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c600000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c600000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c600000000', 'daily');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2c700000000', '68e4c90d-215d-a4a4-ccce-c3a200000000', '671b0000-0000-0000-0000-010100000000', 'Post #87: Reflecting on daily life.', '2025-10-07 08:02:21.016000+00:00', 1, 3, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c700000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c700000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c700000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c700000000', '671b0000-0000-0000-0000-010200000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('bbcd572b-bfca-4207-abb2-228e7e730cba', '68e4ceb2-4e50-693c-fbce-c2c700000000', '671b0000-0000-0000-0000-010200000000', 'Thanks for sharing.', '2025-10-07 08:07:32.618000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('9316218f-a055-4b4e-9e35-73222e7a23ac', '68e4ceb2-4e50-693c-fbce-c2c700000000', '671b0000-0000-0000-0000-010800000000', 'Nice post!', '2025-10-07 08:07:32.618000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('e70b0c02-40ac-4a2c-ba2d-1258a2ab80d0', '68e4ceb2-4e50-693c-fbce-c2c700000000', '671b0000-0000-0000-0000-010400000000', 'Absolutely agree!', '2025-10-07 08:07:32.618000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2c800000000', '68e4c90d-215d-a4a4-ccce-c3a100000000', '671b0000-0000-0000-0000-010100000000', 'Post #86: Simple ingredients, pure magic. Full recipe in comments!', '2025-10-07 08:02:21.015000+00:00', 4, 2, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c800000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c800000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c800000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c800000000', '671b0000-0000-0000-0000-010400000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c800000000', '671b0000-0000-0000-0000-010500000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c800000000', '671b0000-0000-0000-0000-010200000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c800000000', '671b0000-0000-0000-0000-010800000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('993e3818-c189-4e91-bfa5-d1bfa65f04ef', '68e4ceb2-4e50-693c-fbce-c2c800000000', '671b0000-0000-0000-0000-010200000000', 'Nice post!', '2025-10-07 08:07:32.615000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('eb305746-94c1-4ed9-aee0-30238803ab2b', '68e4ceb2-4e50-693c-fbce-c2c800000000', '671b0000-0000-0000-0000-010800000000', 'Interesting perspective.', '2025-10-07 08:07:32.615000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2c900000000', '68e4c90d-215d-a4a4-ccce-c39e00000000', '671b0000-0000-0000-0000-010100000000', 'Post #83: Check out my latest project.', '2025-10-07 08:02:21.010000+00:00', 4, 3, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c900000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c900000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2c900000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c900000000', '671b0000-0000-0000-0000-010300000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c900000000', '671b0000-0000-0000-0000-010100000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c900000000', '671b0000-0000-0000-0000-010500000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2c900000000', '671b0000-0000-0000-0000-010800000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('318960b0-d022-4f3d-8d11-463e7d9b422e', '68e4ceb2-4e50-693c-fbce-c2c900000000', '671b0000-0000-0000-0000-010200000000', 'This is helpful.', '2025-10-07 08:07:32.608000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('187fc248-e791-4c0e-94a5-8ce25b36d85d', '68e4ceb2-4e50-693c-fbce-c2c900000000', '671b0000-0000-0000-0000-010500000000', 'This is helpful.', '2025-10-07 08:07:32.608000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('e057b023-0874-4b66-9070-9b36a0670668', '68e4ceb2-4e50-693c-fbce-c2c900000000', '671b0000-0000-0000-0000-010100000000', 'Great content!', '2025-10-07 08:07:32.608000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2ca00000000', '68e4c90d-215d-a4a4-ccce-c39900000000', '671b0000-0000-0000-0000-010100000000', 'Post #78: Working on a new research paper about dataset bias in AI training.', '2025-10-07 08:02:21.002000+00:00', 3, 3, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2ca00000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2ca00000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2ca00000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2ca00000000', '671b0000-0000-0000-0000-010700000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2ca00000000', '671b0000-0000-0000-0000-010300000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2ca00000000', '671b0000-0000-0000-0000-010100000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('93a9e0ac-6ead-405b-b88c-4b49a5851d70', '68e4ceb2-4e50-693c-fbce-c2ca00000000', '671b0000-0000-0000-0000-010600000000', 'Great content!', '2025-10-07 08:07:32.595000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('ca8729ae-249f-4a34-8a27-b42c16da31bd', '68e4ceb2-4e50-693c-fbce-c2ca00000000', '671b0000-0000-0000-0000-010400000000', 'Thanks for sharing.', '2025-10-07 08:07:32.595000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('9f007164-b7f4-4618-b494-010c259595a0', '68e4ceb2-4e50-693c-fbce-c2ca00000000', '671b0000-0000-0000-0000-010400000000', 'Nice post!', '2025-10-07 08:07:32.595000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2cb00000000', '68e4c90c-215d-a4a4-ccce-c37800000000', '671b0000-0000-0000-0000-010100000000', 'Post #45: Reflecting on daily life.', '2025-10-07 08:02:20.952000+00:00', 0, 1, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cb00000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cb00000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cb00000000', 'daily');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('62a8eb8a-a003-4d6f-b96a-8d4b4759907b', '68e4ceb2-4e50-693c-fbce-c2cb00000000', '671b0000-0000-0000-0000-010300000000', 'Great content!', '2025-10-07 08:07:32.519000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2cc00000000', '68e4c90c-215d-a4a4-ccce-c36a00000000', '671b0000-0000-0000-0000-010100000000', 'Post #31: Sharing my thoughts about tech.', '2025-10-07 08:02:20.926000+00:00', 1, 3, '671b0000-0000-0000-0000-010200000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cc00000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cc00000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cc00000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2cc00000000', '671b0000-0000-0000-0000-010500000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('656eafef-d0fe-4c77-9875-b6d674a63879', '68e4ceb2-4e50-693c-fbce-c2cc00000000', '671b0000-0000-0000-0000-010600000000', 'This is helpful.', '2025-10-07 08:07:32.487000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('ef58dac2-206d-44b2-a502-ac829ff7a817', '68e4ceb2-4e50-693c-fbce-c2cc00000000', '671b0000-0000-0000-0000-010300000000', 'Interesting perspective.', '2025-10-07 08:07:32.487000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('05c75561-51e5-4e97-8458-b5fca73188c9', '68e4ceb2-4e50-693c-fbce-c2cc00000000', '671b0000-0000-0000-0000-010300000000', 'Interesting perspective.', '2025-10-07 08:07:32.487000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2cd00000000', '68e4c90d-215d-a4a4-ccce-c3da00000000', '671b0000-0000-0000-0000-010100000000', 'Post #143: A quick update from me.', '2025-10-07 08:02:21.113000+00:00', 2, 3, '671b0000-0000-0000-0000-010400000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cd00000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cd00000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cd00000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2cd00000000', '671b0000-0000-0000-0000-010300000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2cd00000000', '671b0000-0000-0000-0000-010400000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('177b75e3-fbfa-40c8-9805-201801c3b1ea', '68e4ceb2-4e50-693c-fbce-c2cd00000000', '671b0000-0000-0000-0000-010400000000', 'This is helpful.', '2025-10-07 08:07:32.742000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('2d3a8106-2e5f-4bf5-9f94-a39cb213f4aa', '68e4ceb2-4e50-693c-fbce-c2cd00000000', '671b0000-0000-0000-0000-010500000000', 'Great content!', '2025-10-07 08:07:32.742000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('7065b0fc-d83c-4451-a7ae-02cfef224c8a', '68e4ceb2-4e50-693c-fbce-c2cd00000000', '671b0000-0000-0000-0000-010500000000', 'Nice post!', '2025-10-07 08:07:32.742000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2ce00000000', '68e4c90d-215d-a4a4-ccce-c3c900000000', '671b0000-0000-0000-0000-010100000000', 'Post #126: Exploring new social media features.', '2025-10-07 08:02:21.089000+00:00', 0, 0, '671b0000-0000-0000-0000-010400000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2ce00000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2ce00000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2ce00000000', 'daily');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2cf00000000', '68e4c90d-215d-a4a4-ccce-c3c600000000', '671b0000-0000-0000-0000-010100000000', 'Post #123: Shared a new guide on setting up CI/CD pipelines using AWS Lambda.', '2025-10-07 08:02:21.085000+00:00', 4, 0, '671b0000-0000-0000-0000-010400000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cf00000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cf00000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2cf00000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2cf00000000', '671b0000-0000-0000-0000-010600000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2cf00000000', '671b0000-0000-0000-0000-010300000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2cf00000000', '671b0000-0000-0000-0000-010100000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2cf00000000', '671b0000-0000-0000-0000-010400000000');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2d000000000', '68e4c90d-215d-a4a4-ccce-c3c500000000', '671b0000-0000-0000-0000-010100000000', 'Post #122: Sharing my thoughts about tech.', '2025-10-07 08:02:21.083000+00:00', 4, 0, '671b0000-0000-0000-0000-010400000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d000000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d000000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d000000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d000000000', '671b0000-0000-0000-0000-010200000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d000000000', '671b0000-0000-0000-0000-010100000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d000000000', '671b0000-0000-0000-0000-010300000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d000000000', '671b0000-0000-0000-0000-010800000000');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2d100000000', '68e4c90d-215d-a4a4-ccce-c3c300000000', '671b0000-0000-0000-0000-010100000000', 'Post #120: A quick update from me.', '2025-10-07 08:02:21.081000+00:00', 1, 1, '671b0000-0000-0000-0000-010400000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d100000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d100000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d100000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d100000000', '671b0000-0000-0000-0000-010500000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('4ecb3d59-da33-4de2-991a-a3158d62984d', '68e4ceb2-4e50-693c-fbce-c2d100000000', '671b0000-0000-0000-0000-010800000000', 'Absolutely agree!', '2025-10-07 08:07:32.692000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2d200000000', '68e4c90d-215d-a4a4-ccce-c3c000000000', '671b0000-0000-0000-0000-010100000000', 'Post #117: Reflecting on daily life.', '2025-10-07 08:02:21.077000+00:00', 4, 0, '671b0000-0000-0000-0000-010400000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d200000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d200000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d200000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d200000000', '671b0000-0000-0000-0000-010300000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d200000000', '671b0000-0000-0000-0000-010600000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d200000000', '671b0000-0000-0000-0000-010500000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d200000000', '671b0000-0000-0000-0000-010700000000');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2d300000000', '68e4c90d-215d-a4a4-ccce-c3bf00000000', '671b0000-0000-0000-0000-010100000000', 'Post #116: Simple ingredients, pure magic. Full recipe in comments!', '2025-10-07 08:02:21.075000+00:00', 4, 2, '671b0000-0000-0000-0000-010400000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d300000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d300000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d300000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d300000000', '671b0000-0000-0000-0000-010200000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d300000000', '671b0000-0000-0000-0000-010300000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d300000000', '671b0000-0000-0000-0000-010500000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d300000000', '671b0000-0000-0000-0000-010800000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('d5ebb31c-60cf-4ad8-a978-dead915940cd', '68e4ceb2-4e50-693c-fbce-c2d300000000', '671b0000-0000-0000-0000-010100000000', 'Great content!', '2025-10-07 08:07:32.684000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('027f7158-f341-4725-b4aa-48e761b8c93f', '68e4ceb2-4e50-693c-fbce-c2d300000000', '671b0000-0000-0000-0000-010100000000', 'Absolutely agree!', '2025-10-07 08:07:32.684000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2d400000000', '68e4c90d-215d-a4a4-ccce-c3b800000000', '671b0000-0000-0000-0000-010100000000', 'Post #109: Check out my latest project.', '2025-10-07 08:02:21.052000+00:00', 3, 3, '671b0000-0000-0000-0000-010400000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d400000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d400000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d400000000', 'daily');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d400000000', '671b0000-0000-0000-0000-010100000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d400000000', '671b0000-0000-0000-0000-010600000000');
INSERT INTO feed_likes (feed_id, liked_by) VALUES ('68e4ceb2-4e50-693c-fbce-c2d400000000', '671b0000-0000-0000-0000-010800000000');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('49c020e9-b692-4cfd-889e-c0cb1cb242ac', '68e4ceb2-4e50-693c-fbce-c2d400000000', '671b0000-0000-0000-0000-010700000000', 'Thanks for sharing.', '2025-10-07 08:07:32.673000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('18fd22ee-779a-49b6-913c-40516b63c524', '68e4ceb2-4e50-693c-fbce-c2d400000000', '671b0000-0000-0000-0000-010600000000', 'Absolutely agree!', '2025-10-07 08:07:32.673000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('3537a1b4-90c7-48df-ab1b-814ba6c761ff', '68e4ceb2-4e50-693c-fbce-c2d400000000', '671b0000-0000-0000-0000-010400000000', 'Nice post!', '2025-10-07 08:07:32.673000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2d500000000', '68e4c90d-215d-a4a4-ccce-c3b700000000', '671b0000-0000-0000-0000-010100000000', 'Post #108: Simple ingredients, pure magic. Full recipe in comments!', '2025-10-07 08:02:21.048000+00:00', 0, 3, '671b0000-0000-0000-0000-010400000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d500000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d500000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d500000000', 'daily');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('a34345a0-849b-425c-aaab-0131336cc2d3', '68e4ceb2-4e50-693c-fbce-c2d500000000', '671b0000-0000-0000-0000-010700000000', 'Nice post!', '2025-10-07 08:07:32.671000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('cdcb797f-b879-4f45-a2d6-450dbdfa9dcd', '68e4ceb2-4e50-693c-fbce-c2d500000000', '671b0000-0000-0000-0000-010400000000', 'Thanks for sharing.', '2025-10-07 08:07:32.671000+00:00');
INSERT INTO feed_comments (comment_id, feed_id, user_id, body, created_at)
            VALUES ('a52ee40e-e457-42d7-b380-79bb58f12a77', '68e4ceb2-4e50-693c-fbce-c2d500000000', '671b0000-0000-0000-0000-010500000000', 'Great content!', '2025-10-07 08:07:32.671000+00:00');
INSERT INTO feeds (
        feed_id, post_id, user_feed_for, body, created_at, likes_count, comments_count, posted_by
    ) VALUES (
        '68e4ceb2-4e50-693c-fbce-c2d600000000', '68e4c90d-215d-a4a4-ccce-c3a000000000', '671b0000-0000-0000-0000-010100000000', 'Post #85: Working on a new research paper about dataset bias in AI training.', '2025-10-07 08:02:21.014000+00:00', 0, 0, '671b0000-0000-0000-0000-010400000000'
    );
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d600000000', 'life');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d600000000', 'update');
INSERT INTO feed_tags (feed_id, tag) VALUES ('68e4ceb2-4e50-693c-fbce-c2d600000000', 'daily');
