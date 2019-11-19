const {
    Day
} = require('../models');

var path = require('path');

module.exports = (app) => {

    app.get('/', (req, res) => {
        res.sendFile(path.join(__dirname + '/index.html'));
    });

    app.get('/api', (req, res) => {
        res.json({
            'message': 'api.'
        })
    });

    app.get('/api/days', (req, res) => {
        Day.findAll().then(days => res.json(days))
    });

    app.post('/api/days', (req, res) => {
        Day.create(req.body)
            .then(day => res.json(day))
    });
}