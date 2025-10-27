import React from "react";

function Post({ post }) {
  return (
    <div className="post">
      <div className="post-header">
        <strong>{post.username || `User ${post.user_id}`}</strong>
        <span className="post-time">
          {post.created_at
            ? new Date(post.created_at).toLocaleString()
            : "Recently"}
        </span>
      </div>
      <div className="post-body">{post.body || "No content"}</div>
      <div className="post-footer">
        <span>Post ID: {post.post_id}</span>
      </div>
    </div>
  );
}

export default Post;
