var express = require('express');
var app = express.Router();

/* GET users listing. */
app.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

/* GET user profile. */
app.get('/current', function(req, res, next) {
    res.send(req.user);
});

module.exports = app;