const express = require('express')
const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.json())

// API ENDPOINTS
const Sequelize = require('sequelize');

const port = 3000
app.listen(port, () => {
    console.log(`Running on http://localhost:${port}`)
});

const {
    Group,
    Meeting,
    Format,
    Day
} = require('./models');

console.log(Group);

// create a group
app.post('/api/groups', (req, res) => {
    Group.create(req.body)
        .then(group => res.json(group));
});

app.get('/api/meetings/:groupId?', (req, res) => {
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
        query = Meeting.findAll({})
    }
    return query.then(meetings => res.json(meetings))
})

app.post('/api/days', (req, res) => {
    Day.create(req.body)
        .then(day => res.json(day))
});

app.post('/api/meetings', (req, res) => {
    Meeting.create(req.body)
        .then(meeting => res.json(meeting))
});

app.post('/api/formats', (req, res) => {
    req.body.forEach(format => {
        Format.create(format)
            .then(format => res.json(format))
    });
});

// get all groups
app.get('/api/groups', (req, res) => {
    Group.findAll({
            include: [{
                model: Meeting,
                where: {
                    group_id: Sequelize.col('group.id')
                }
            }]
        })
        .then(groups => res.json(groups));

});

app.get('/api/formats', (req, res) => {
    Format.findAll().then(formats => res.json(formats))
});

app.get('/api/days', (req, res) => {
    Day.findAll().then(days => res.json(days))
});