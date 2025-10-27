const { MongoClient, ObjectId } = require("mongodb");

const uri = process.env.MONGO_URI || "mongodb://127.0.0.1:27017";
const client = new MongoClient(uri);
const dbName = "social_media";

let db;

async function connect() {
  if (!db) {
    await client.connect();
    db = client.db(dbName);
  }
  return db;
}

module.exports = {
  // Get all posts
  getPosts: async () => {
    const database = await connect();
    const posts = await database
      .collection("posts")
      .aggregate([
        {
          $lookup: {
            from: "user_profiles",
            localField: "user_id",
            foreignField: "user_id",
            as: "user",
          },
        },
        { $unwind: "$user" },
        { $sort: { created_at: -1 } },
        { $limit: 100 },
      ])
      .toArray();
    return posts;
  },

  // Create post
  createPost: async (postData) => {
    const database = await connect();
    const post = {
      ...postData,
      post_id: new ObjectId().toString(),
      created_at: new Date(),
    };
    await database.collection("posts").insertOne(post);
    return post;
  },

  // Update post
  updatePost: async (postId, postData) => {
    const database = await connect();
    const result = await database
      .collection("posts")
      .findOneAndUpdate(
        { post_id: postId },
        { $set: postData },
        { returnDocument: "after" }
      );
    return result.value;
  },

  // Delete post
  deletePost: async (postId) => {
    const database = await connect();
    await database.collection("posts").deleteOne({ post_id: postId });
  },

  // Get users
  getUsers: async () => {
    const database = await connect();
    const users = await database
      .collection("users")
      .aggregate([
        {
          $lookup: {
            from: "user_profiles",
            localField: "user_id",
            foreignField: "user_id",
            as: "profile",
          },
        },
        { $unwind: "$profile" },
        { $limit: 100 },
      ])
      .toArray();
    return users;
  },

  // Get user feed
  getUserFeed: async (userId) => {
    const database = await connect();
    const feed = await database
      .collection("feeds")
      .aggregate([
        { $match: { user_feed_for: userId } },
        {
          $lookup: {
            from: "user_profiles",
            localField: "posted_by",
            foreignField: "user_id",
            as: "user",
          },
        },
        { $unwind: "$user" },
        { $sort: { created_at: -1 } },
        { $limit: 50 },
      ])
      .toArray();
    return feed;
  },
};
