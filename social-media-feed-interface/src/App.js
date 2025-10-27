import React from "react";
import Feed from "./components/Feed";
import ChartDashboard from "./components/ChartDashboard";
import "./App.css";

function App() {
  return (
    <div className="App">
      <header className="app-header">
        <h1>SQL vs NoSQL Performance Comparison</h1>
        <p>PostgreSQL vs MongoDB Database Benchmarking</p>
      </header>

      <main className="app-content">
        <section className="chart-section">
          <ChartDashboard />
        </section>

        <section className="feed-section">
          <Feed />
        </section>
      </main>
    </div>
  );
}

export default App;
