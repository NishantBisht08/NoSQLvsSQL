const { Pool } = require("pg");

const pool = new Pool({
  user: process.env.DB_USER || "postgres",
  host: process.env.DB_HOST || "localhost",
  database: process.env.DB_NAME || "social_media",
  password: process.env.DB_PASSWORD || "gunnu1@A",
  port: process.env.DB_PORT || 5432,
});

module.exports = {
  // Get all posts
  getPosts: async () => {
    const result = await pool.query(`
      SELECT p.*, up.username, up.first_name, up.last_name
      FROM posts p
      JOIN user_profiles up ON p.user_id = up.user_id
      ORDER BY p.created_at DESC
      LIMIT 100
    `);
    return result.rows;
  },

  // Create post - FIXED VERSION
  createPost: async (postData) => {
    const { user_id, body } = postData;

    // Use gen_random_uuid() for post_id instead of passing it
    const result = await pool.query(
      `INSERT INTO posts (post_id, user_id, body, created_at) 
       VALUES (gen_random_uuid(), $1, $2, NOW()) 
       RETURNING *`,
      [user_id, body]
    );

    return result.rows[0];
  },

  // Update post - Handle both UUID string and generated ID
  updatePost: async (postId, postData) => {
    const { body } = postData;

    const result = await pool.query(
      `UPDATE posts 
       SET body = $1 
       WHERE post_id::text = $2 
       RETURNING *`,
      [body, postId]
    );

    return result.rows[0];
  },

  // Delete post - Handle both UUID string and generated ID
  deletePost: async (postId) => {
    await pool.query(`DELETE FROM posts WHERE post_id::text = $1`, [postId]);
  },

  // Get users
  getUsers: async () => {
    const result = await pool.query("SELECT * FROM users");
    return result.rows;
  },

  // Get user feed
  getUserFeed: async (userId) => {
    const result = await pool.query(
      `SELECT p.*, u.username
       FROM posts p
       JOIN follows f ON p.user_id = f.following_id
       JOIN users u ON p.user_id = u.user_id
       WHERE f.follower_id = $1
       ORDER BY p.created_at DESC`,
      [userId]
    );
    return result.rows;
  },
};
