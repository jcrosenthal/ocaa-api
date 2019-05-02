const {
    Format
} = require('../models');

module.exports = (app) => {
    app.post('/formats', (req, res) => {
        req.body.forEach(format => {
            Format.create(format)
                .then(format => res.json(format))
        });
    });

    app.get('/formats', (req, res) => {
        Format.findAll().then(formats => res.json(formats))
    });
}