const express = require('express')
const bodyParser = require('body-parser')
var cors = require('cors');
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

var allowedOrigins = ['http://0.0.0.0:8080'];
app.use(cors({
  origin: function(origin, callback){
    // allow requests with no origin 
    // (like mobile apps or curl requests)
    if(!origin) return callback(null, true);
    if(allowedOrigins.indexOf(origin) === -1){
      var msg = 'The CORS policy for this site does not ' +
                'allow access from the specified Origin.';
      return callback(new Error(msg), false);
    }
    return callback(null, true);
  }
}));

// create a group
app.post('/api/groups', (req, res) => {

    Group.create(Object.assign({}, req.body, {
            meetings: undefined
        }))
        .then(group => {

            if (req.body.meetings) {
                req.body.meetings.forEach((m, i) => {
                    Meeting.create(Object.assign({}, m, {
                            group_id: group.id
                        }))
                        .then(() => {
                            if (i === req.body.meetings.length - 1) {
                                return res.json(group.id);
                            }
                        });
                });
            } else {
                return res.json(group);
            }

        });

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