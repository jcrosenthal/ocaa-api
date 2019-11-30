const {
    Format
} = require('../models');
var express = require('express');
var app = express.Router();

app.post('/', (req, res) => {
    req.body.forEach(format => {
        Format.create(format)
            .then(format => res.json(format))
    });
});

app.get('/', (req, res) => {
    Format.findAll().then(formats => res.json(formats))
});

module.exports = app;