const express = require('express');
const app = express.Router();

const jwt = require('jsonwebtoken');
const passport = require('passport');

/* POST login. */
app.post('/login', function (req, res, next) {

    passport.authenticate('local', {
            session: false
        }, (err, user, info) => {

            if (err || !user) {
                return res.status(400).json({
                    message: info ? info.message : 'Login failed',
                    user: user
                });
            }

            req.login(user, {
                session: false
            }, (err) => {
                if (err) {
                    res.send(err);
                }

                const token = jwt.sign(user, 'ocaa_' + process.env.NODE_ENV);

                return res.json({
                    user,
                    token
                });
            });
        })
        (req, res);

});

module.exports = app;