// Backend API Server for SQL vs NoSQL Comparison Project
const express = require("express");
const cors = require("cors");
const app = express();

// Middleware
app.use(cors());
app.use(express.json());

// Choose database type from environment variable
const dbType = process.env.DB_TYPE || "sql";

// Import database handlers
const sqlHandler = require("./database/sql/sqlHandler");
const mongoHandler = require("./database/mongodb/mongoHandler");

// Select which database handler to use
const db = dbType === "sql" ? sqlHandler : mongoHandler;

console.log(`Using ${dbType.toUpperCase()} database`);

// Simple timing helper
function measureTime(req) {
  return Date.now() - req.startTime;
}

// Add start time to all requests
app.use((req, res, next) => {
  req.startTime = Date.now();
  next();
});

// Get all posts
app.get("/api/posts", async (req, res) => {
  try {
    const posts = await db.getPosts();
    const timeTaken = measureTime(req);

    console.log(`GET /api/posts - ${timeTaken}ms (${dbType})`);

    res.json({
      data: posts,
      duration: timeTaken,
      database: dbType,
    });
  } catch (error) {
    console.error("Error fetching posts:", error);
    res.status(500).json({ error: "Failed to fetch posts" });
  }
});

// Create a new post
app.post("/api/posts", async (req, res) => {
  try {
    const newPost = await db.createPost(req.body);
    const timeTaken = measureTime(req);

    console.log(`POST /api/posts - ${timeTaken}ms (${dbType})`);

    res.json({
      data: newPost,
      duration: timeTaken,
      database: dbType,
    });
  } catch (error) {
    console.error("Error creating post:", error);
    res.status(500).json({ error: "Failed to create post" });
  }
});

// Update an existing post
app.put("/api/posts/:id", async (req, res) => {
  try {
    const updatedPost = await db.updatePost(req.params.id, req.body);
    const timeTaken = measureTime(req);

    console.log(`PUT /api/posts/${req.params.id} - ${timeTaken}ms (${dbType})`);

    res.json({
      data: updatedPost,
      duration: timeTaken,
      database: dbType,
    });
  } catch (error) {
    console.error("Error updating post:", error);
    res.status(500).json({ error: "Failed to update post" });
  }
});

// Delete a post
app.delete("/api/posts/:id", async (req, res) => {
  try {
    await db.deletePost(req.params.id);
    const timeTaken = measureTime(req);

    console.log(
      `DELETE /api/posts/${req.params.id} - ${timeTaken}ms (${dbType})`
    );

    res.json({
      success: true,
      duration: timeTaken,
      database: dbType,
    });
  } catch (error) {
    console.error("Error deleting post:", error);
    res.status(500).json({ error: "Failed to delete post" });
  }
});

// PERFORMANCE TESTING ENDPOINT

app.get("/api/performance", async (req, res) => {
  try {
    console.log(" Running performance tests...");
    const metrics = { database: dbType, operations: [] };

    // Use a VALID user_id from your database (from pgAdmin query)
    const validUserId = "671b0000-0000-0000-0000-010100000000"; // ← Copy one of  UUIDs here

    // Test READ
    let start = Date.now();
    await db.getPosts();
    metrics.operations.push({
      name: "Read Posts",
      duration: Date.now() - start,
    });

    // Test CREATE
    start = Date.now();
    const testPost = {
      user_id: validUserId, // ← Use the real UUID!
      body: "Performance test post - will be deleted",
    };
    const createdPost = await db.createPost(testPost);
    const createDuration = Date.now() - start;
    metrics.operations.push({ name: "Create Post", duration: createDuration });

    // Test UPDATE
    start = Date.now();
    await db.updatePost(createdPost.post_id, { body: "Updated test post" });
    metrics.operations.push({
      name: "Update Post",
      duration: Date.now() - start,
    });

    // Test DELETE
    start = Date.now();
    await db.deletePost(createdPost.post_id);
    metrics.operations.push({
      name: "Delete Post",
      duration: Date.now() - start,
    });

    console.log(" Performance test complete!");
    res.json(metrics);
  } catch (error) {
    console.error(" Performance test failed:", error.message);
    res.status(500).json({ error: error.message });
  }
});

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log("=".repeat(50));
  console.log(`Server running on port ${PORT}`);
  console.log(`Database: ${dbType.toUpperCase()}`);
  console.log(`API: http://localhost:${PORT}/api/posts`);
  console.log("=".repeat(50));
});
