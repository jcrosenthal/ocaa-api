const {
    Meeting,
    Group
} = require('../models');

var express = require('express');
var app = express.Router();

app.get('/:groupId?', (req, res) => {
    let query;
    if (req.params.groupId) {
        query = Meeting.findAll({
            include: [{
                model: Group,
                where: {
                    id: req.params.groupId
                }
            }]
        })
    } else {
        query = Meeting.findAll({
            include: [{
                model: Group
            }]
        })
    }
    return query.then(meetings => res.json(meetings))
});

app.post('/', (req, res) => {
    Meeting.create(req.body)
        .then(meeting => res.json(meeting))
});

module.exports = app;