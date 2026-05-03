const express = require("express");
const app = express();

// Health endpoint (important for Docker healthcheck)
app.get("/", (req, res) => {
  res.send("App is healthy ✅");
});

app.listen(3000, "0.0.0.0", () => {
  console.log("Server running on port 3000");
});
