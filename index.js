const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors');
const app = express();
require('./passport');

app.use(bodyParser.json())

// API ENDPOINTS
const PORT = process.env.PORT || 5000;
const NODE_ENV = process.env.NODE_ENV;

const isProd = NODE_ENV === 'production';
const allowedOrigin = isProd ? 'https://orangenyaa.org' : 'https://0.0.0.0:8080';

app.listen(PORT, () => {
    console.log(`Running on http://localhost:${PORT}`)
});

app.use(function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

app.use(cors({
    origin: (origin, callback) => {
        // allow requests with no origin 
        // (like mobile apps or curl requests)
        if (!origin) {
            return callback(null, true);
        }

        if (!allowedOrigin.includes(origin)) {
            var msg = 'The CORS policy for this site does not ' +
                'allow access from the specified Origin.' + origin;
            return callback(new Error(msg), false);
        }

        return callback(null, true);
    }
}));

require('./routes')(app);