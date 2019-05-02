const express = require('express')
const bodyParser = require('body-parser')
var cors = require('cors');
const app = express()

app.use(bodyParser.json())

// API ENDPOINTS
const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
    console.log(`Running on http://localhost:${PORT}`)
});

var allowedOrigins = [
    'https://orangenyaa.org',
    'http://localhost:8080',
    'http://0.0.0.0:8080'
];

app.use(cors({
    origin: function (origin, callback) {

        // allow requests with no origin 
        // (like mobile apps or curl requests)
        if (!origin) {
            return callback(null, true);
        }
        if (allowedOrigins.indexOf(origin) === -1) {
            var msg = 'The CORS policy for this site does not ' +
                'allow access from the specified Origin.' + origin;
            return callback(new Error(msg), false);
        }
        return callback(null, true);
    }
}));

require('./routes')(app);