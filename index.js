const express = require('express')
const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.json())

// API ENDPOINTS

const port = 3000
app.listen(port, () => {
    console.log(`Running on http://localhost:${port}`)
});

const {
    Group,
    Meeting,
} = require('./models');

console.log(Group);

// create a group
app.post('/api/groups', (req, res) => {
    Group.create(req.body)
        .then(user => res.json(user))
});

// get all groups
app.get('/api/groups', (req, res) => {
    Group.findAll().then(users => res.json(users))
});