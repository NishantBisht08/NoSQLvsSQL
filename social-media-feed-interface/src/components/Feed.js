import React from "react";
import Post from "./post";
import samplePosts from "../data/samplePost";
import "./Feed.css";

function Feed() {
  return (
    <div className="feed-container">
      <h2 className="feed-title">Social Media Feed</h2>
      {samplePosts.map((post) => (
        <Post
          key={post.id}
          username={post.username}
          content={post.content}
          timestamp={post.timestamp}
        />
      ))}
    </div>
  );
}

export default Feed;
