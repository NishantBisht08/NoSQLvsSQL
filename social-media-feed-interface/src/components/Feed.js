import React, { useEffect, useState } from "react";
import axios from "axios";
import Post from "./post";

function Feed() {
  //const state = useState([]);
  const [posts, setPosts] = useState([]); //returns array
  //we named usedstate[0] posts and named usedstate[1] to setpost which is fuction

  useEffect(() => {
    axios
      .get("http://localhost:5000/api/posts")
      .then((response) => {
        setPosts(response.data);
      })
      .catch((error) => {
        console.error("Error fetching posts:", error);
      });
  }, []);

  return (
    <div className="feed-container">
      <h2 className="feed-title">Social Media Feed</h2>

      {posts.map((post) => (
        <Post
          key={post._id?.$oid}
          username={post.user_id?.$oid}
          content={post.body}
          timestamp={post.created_at?.$date}
        />
      ))}
    </div>
  );
}

export default Feed;
