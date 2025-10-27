import React, { useState, useEffect } from "react";
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
  const [chartData, setChartData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchPerformanceData = async () => {
      try {
        setLoading(true);

        const response = await fetch("http://localhost:5000/api/performance");

        if (!response.ok) {
          throw new Error(`Server error: ${response.status}`);
        }

        const data = await response.json();

        // Validate data structure
        if (!data || !data.operations || !Array.isArray(data.operations)) {
          throw new Error("Invalid data format from server");
        }

        // Extract operation names and durations
        const operationNames = data.operations.map((op) => op.name);
        const durations = data.operations.map((op) => op.duration);

        // Create chart data
        setChartData({
          labels: operationNames,
          datasets: [
            {
              label: `$ {data.database.toUpperCase()} Database`,
              data: durations,
              backgroundColor:
                data.database === "sql"
                  ? "rgba(54, 162, 235, 0.6)" // Blue for SQL
                  : "rgba(255, 99, 132, 0.6)", // Red for MongoDB
              borderColor:
                data.database === "sql"
                  ? "rgba(54, 162, 235, 1)"
                  : "rgba(255, 99, 132, 1)",
              borderWidth: 2,
            },
          ],
        });

        setLoading(false);
      } catch (err) {
        console.error("Error fetching performance data:", err);
        setError(err.message);
        setLoading(false);
      }
    };

    fetchPerformanceData();
  }, []);

  const options = {
    responsive: true,
    maintainAspectRatio: false,
    plugins: {
      legend: {
        position: "top",
      },
      title: {
        display: true,
        text: "Database Performance Comparison (Response Time)",
        font: {
          size: 18,
        },
      },
    },
    scales: {
      y: {
        beginAtZero: true,
        title: {
          display: true,
          text: "Time (milliseconds)",
        },
      },
      x: {
        title: {
          display: true,
          text: "Operation Type",
        },
      },
    },
  };

  if (loading) {
    return (
      <div style={{ padding: "40px", textAlign: "center" }}>
        <h2>⏳ Loading Performance Data...</h2>
        <p>Running database benchmark tests...</p>
      </div>
    );
  }

  if (error) {
    return (
      <div style={{ padding: "40px", textAlign: "center", color: "#e74c3c" }}>
        <h2>❌ Error Loading Performance Data</h2>
        <p>{error}</p>
        <p style={{ marginTop: "20px", fontSize: "14px", color: "#666" }}>
          Make sure the backend server is running on port 5000
        </p>
      </div>
    );
  }

  if (!chartData) {
    return (
      <div style={{ padding: "40px", textAlign: "center" }}>
        <h2>No Data Available</h2>
        <p>Unable to load chart data</p>
      </div>
    );
  }

  return (
    <div style={{ padding: "20px" }}>
      <div style={{ height: "400px" }}>
        <Bar data={chartData} options={options} />
      </div>
    </div>
  );
}

export default ChartDashboard;
