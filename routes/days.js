const {
    Day
} = require('../models');

module.exports = (app) => {
    app.get('/', (req, res) => {
        res.json({'message' : 'hello.'})
    });
    
    app.get('/days', (req, res) => {
        Day.findAll().then(days => res.json(days))
    });
    
    app.post('/days', (req, res) => {
        Day.create(req.body)
            .then(day => res.json(day))
    });
}