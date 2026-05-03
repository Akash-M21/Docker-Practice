const express = require("express");
const app = express();

const env = process.env.NODE_ENV || "unknown";

app.get("/", (req, res) => {
  res.send(`Running in ${env} mode`);
});

app.listen(3000, "0.0.0.0", () => {
  console.log(`Server running in ${env} mode`);
});
