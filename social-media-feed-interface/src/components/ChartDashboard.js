import React from "react";
import { Bar } from "react-chartjs-2";
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend,
} from "chart.js";

ChartJS.register(
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend
);

function ChartDashboard() {
  // Sample data comparing SQL vs NoSQL query execution times in milliseconds
  const data = {
    labels: ["Query 1", "Query 2", "Query 3", "Query 4"],
    datasets: [
      {
        label: "PostgreSQL",
        data: [150, 120, 170, 100],
        backgroundColor: "rgba(75, 192, 192, 0.6)",
      },
      {
        label: "MongoDB",
        data: [130, 140, 110, 90],
        backgroundColor: "rgba(255, 99, 132, 0.6)",
      },
    ],
  };

  const options = {
    responsive: true,
    plugins: {
      legend: { position: "top" },
      title: { display: true, text: "SQL vs NoSQL Query Performance (ms)" },
    },
  };

  return (
    <div
      style={{
        maxWidth: "800px",
        margin: "40px auto",
        background: "#fff",
        padding: "24px",
        borderRadius: "10px",
      }}
    >
      <Bar
        data={data}
        options={{ ...options, maintainAspectRatio: false }}
        height={400}
      />
    </div>
  );
}

export default ChartDashboard;
