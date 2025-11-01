import React, { useState, useEffect } from "react";
import Post from "./post";
import "./Feed.css";

function Feed() {
  const [posts, setPosts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [dbType, setDbType] = useState("");

  useEffect(() => {
    fetch("http://localhost:5000/api/posts")
      .then((response) => {
        if (!response.ok) {
          throw new Error("Failed to fetch posts");
        }
        return response.json();
      })
      .then((responseData) => {
        // Backend returns { data , duration, database }
        const postsArray = responseData.data || [];
        const database = responseData.database || "unknown";

        setPosts(postsArray);
        setDbType(database);
        setLoading(false);
      })
      .catch((err) => {
        console.error("Error fetching posts:", err);
        setError(err.message);
        setLoading(false);
      });
  }, []);

  if (loading) {
    return (
      <div className="feed-container">
        <div className="loading">Loading posts...</div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="feed-container">
        <div className="error">Error: {error}</div>
      </div>
    );
  }

  return (
    <div className="feed-container">
      <div className="feed-header">
        <h2>Social Media Feed</h2>
        <span className="db-badge">{dbType.toUpperCase()} Database</span>
      </div>
      <div className="feed">
        {posts.length > 0 ? (
          posts.map((post) => <Post key={post.post_id} post={post} />)
        ) : (
          <p>No posts available</p>
        )}
      </div>
    </div>
  );
}

export default Feed;
