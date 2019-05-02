const {
    Meeting,
    Group
} = require('../models');

module.exports = (app) => {
    app.get('/meetings/:groupId?', (req, res) => {
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

    app.post('/meetings', (req, res) => {
        Meeting.create(req.body)
            .then(meeting => res.json(meeting))
    });
}