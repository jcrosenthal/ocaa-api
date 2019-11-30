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

    app.use('/users', passport.authenticate('jwt', {
        session: false
    }), users);

    const protectedRoutes = [
        'days',
        'meetings',
        'routes',
        'formats'
    ];

    protectedRoutes.forEach(route => {
        app.post(`/${route}`, passport.authenticate('jwt', {
            session: false
        }), (req, res, next) => {
            next();
        });
    })

    app.put('*', passport.authenticate('jwt', {
        session: false
    }), (req, res, next) => {
        next();
    });

    app.delete('*', passport.authenticate('jwt', {
        session: false
    }), (req, res, next) => {
        next();
    });

    app.use('/groups', groups);
    app.use('/meetings', meetings);

    app.use('/days', days);
    app.use('/formats', formats);

    app.use('/auth', auth);

}