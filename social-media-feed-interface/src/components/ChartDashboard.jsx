import React, { useState, useEffect } from "react";
import { Bar } from "react-chartjs-2";
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  BarElement,
} from "chart.js";

ChartJS.register(CategoryScale, LinearScale, BarElement);

function ChartDashboard() {
  const [data, setData] = useState({
    labels: [],
    datasets: [
      {
        label: "Performance (ms)",
        data: [],
        backgroundColor: "rgba(54, 162, 235, 0.6)",
      },
    ],
  });

  useEffect(() => {
    fetch("http://localhost:5000/api/performance")
      .then((res) => res.json())
      .then((result) => {
        setData({
          labels: result.operations.map((op) => op.name),
          datasets: [
            {
              label: "Performance (ms)",
              data: result.operations.map((op) => op.duration),
              backgroundColor: "rgba(54, 162, 235, 0.6)",
            },
          ],
        });
      });
  }, []);

  return (
    <div style={{ height: "400px", width: "100%" }}>
      <Bar data={data} />
    </div>
  );
}

export default ChartDashboard;
