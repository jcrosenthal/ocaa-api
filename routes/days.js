const {
    Day
} = require('../models');

var path = require('path');

var express = require('express');
var app = express.Router();

app.get('/', (req, res) => {
    Day.findAll().then(days => res.json(days))
});

app.post('/', (req, res) => {
    Day.create(req.body)
        .then(day => res.json(day))
});

module.exports = app;