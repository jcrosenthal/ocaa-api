const passport = require('passport');
const users = require('./users');
const days = require('./days');
const meetings = require('./meetings');
const groups = require('./groups');
const formats = require('./formats');
const auth = require('./auth');

module.exports = (app) => {

    app.get('/', (req, res) => {
        res.sendFile(path.join(__dirname + '/index.html'));
    });

    app.get('/api', (req, res) => {
        res.json({
            'message': 'api.'
        })
    });

    app.use('/groups', groups);
    app.use('/meetings', meetings);

    app.use('/days', days);
    app.use('/formats', formats);

    app.use('/users', passport.authenticate('jwt', {
        session: false
    }), users);

    app.post(/^\/(meetings|days|formats|groups)\/+$/, passport.authenticate('jwt', {
        session: false
    }), (req, res, next) => {
        console.log('POST happen');
        next();
    });

    app.put(/^\/(meetings|days|formats|groups)\/.+$/, passport.authenticate('jwt', {
        session: false
    }), (req, res, next) => {
        console.log('POST happen');
        next();
    });

    app.use('/auth', auth);

}