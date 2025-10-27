// seedMongo.js
const { MongoClient } = require("mongodb");

const uri = "mongodb://127.0.0.1:27017";

const dbName = "social_media";

async function seedDatabase() {
  const client = new MongoClient(uri);

  try {
    await client.connect();
    console.log("✅ Connected to MongoDB");

    const db = client.db(dbName);

    // Clear existing collections
    await db.collection("users").deleteMany({});
    await db.collection("user_profiles").deleteMany({});
    await db.collection("posts").deleteMany({});

    console.log("🗑️  Cleared old data");

    // Insert test user (same UUID as PostgreSQL for consistency)
    const users = [
      {
        user_id: "671b0000-0000-0000-0000-010100000000",
        username: "CookingWithPriya",
        email: "priya@example.com",
        created_at: new Date(),
      },
    ];

    await db.collection("users").insertMany(users);
    console.log(`✅ Inserted ${users.length} user(s)`);

    // Insert user profile
    const profiles = [
      {
        user_id: "671b0000-0000-0000-0000-010100000000",
        first_name: "Priya",
        last_name: "Kumar",
        bio: "Food blogger and cooking enthusiast",
        profile_picture_url: null,
        created_at: new Date(),
      },
    ];

    await db.collection("user_profiles").insertMany(profiles);
    console.log(`✅ Inserted ${profiles.length} profile(s)`);

    // Insert 100 test posts for performance testing
    const posts = [];
    for (let i = 1; i <= 100; i++) {
      posts.push({
        post_id: `post_${i}_${Date.now()}`,
        user_id: "671b0000-0000-0000-0000-010100000000",
        body: `Test post #${i} for SQL vs NoSQL performance comparison`,
        created_at: new Date(Date.now() - i * 60000),
      });
    }

    await db.collection("posts").insertMany(posts);
    console.log(`✅ Inserted ${posts.length} posts`);

    // Verify data
    const userCount = await db.collection("users").countDocuments();
    const postCount = await db.collection("posts").countDocuments();

    console.log("\n📊 Database Summary:");
    console.log(`   Users: ${userCount}`);
    console.log(`   Posts: ${postCount}`);
    console.log("\n🎉 MongoDB seeded successfully!");
  } catch (error) {
    console.error("❌ Error seeding database:", error);
  } finally {
    await client.close();
  }
}

seedDatabase();
