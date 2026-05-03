const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from Node behind Nginx");
});

app.listen(3000, "0.0.0.0", () => {
  console.log("Node running on port 3000");
});
