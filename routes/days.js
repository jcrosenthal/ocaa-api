const {
    Day
} = require('../models');

module.exports = (app) => {
    app.get('/api/days', (req, res) => {
        Day.findAll().then(days => res.json(days))
    });
    
    app.post('/api/days', (req, res) => {
        Day.create(req.body)
            .then(day => res.json(day))
    });
}