import React from "react";

function Post({ username, content, timestamp }) {
  return (
    <div
      className="post"
      style={{ border: "1px solid #ddd", padding: "10px", margin: "10px 0" }}
    >
      <h3>@{username}</h3>
      <p>{content}</p>
      <small>{timestamp}</small>
    </div>
  );
}

export default Post;
