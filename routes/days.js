const {
    Day
} = require('../models');

module.exports = (app) => {
    app.get('/api', (req, res) => {
        res.json({'message' : 'api.'})
    });

    app.get('/', (req, res) => {
        res.json({'message' : 'hello.'})
    });
    
    app.get('/api/days', (req, res) => {
        Day.findAll().then(days => res.json(days))
    });
    
    app.post('/api/days', (req, res) => {
        Day.create(req.body)
            .then(day => res.json(day))
    });
}