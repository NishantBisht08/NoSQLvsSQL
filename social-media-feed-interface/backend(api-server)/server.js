// backend/server.js
const express = require("express");
const app = express();
const fs = require("fs");
const cors = require("cors");
app.use(cors()); // Let React dev server access this

app.get("/api/posts", (req, res) => {
  fs.readFile("./database/mongodb/posts.json", "utf8", (err, data) => {
    if (err) return res.status(500).send("Error reading data");
    res.json(JSON.parse(data));
  });
});

// Add more endpoints for feed/users if needed

app.listen(5000, () => console.log("API running on port 5000"));
