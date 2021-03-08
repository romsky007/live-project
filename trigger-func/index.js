'use strict';

const express = require("express");
const app = express();

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

app.listen(PORT, HOST, () => {
 console.log("Server running on port " + PORT);
});


app.get("/", (req, res, next) => {
 res.json(["Classify Customer Feedback with Google Cloud Run Services."]);
});