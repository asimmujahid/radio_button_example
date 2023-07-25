console.log("Hello world")
// just like pint("hello world") in flutter


// import package of express
const express = require("express");

// initializin the port
const PORT = 3000;

// initialize app to express server
const app = express();

//creating an Api
// https:// <Your ip address> /hello world

app.get("/my-name-key", function (req, res) {
    res.json({Name: "Asim Mujahid"});
});

app.get("/hello-world", function (req, res) {
    res.json({hi: "hello world"});
});


// creating an API
app.listen(PORT,  function () {
    console.log(`Connected at a Port ${PORT}`);
});

 