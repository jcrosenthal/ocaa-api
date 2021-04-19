const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors');
const fs = require('fs');
const https = require('https');
const app = express();
require('./passport');

const key = fs.readFileSync('./key.pem');
const cert = fs.readFileSync('./cert.pem');

app.use(bodyParser.json())

// API ENDPOINTS
const NODE_ENV = process.env.NODE_ENV;
const isProd = NODE_ENV === 'production';
const PORT = isProd ? 5000 : process.env.PORT || 5001;
const allowedOrigin = isProd ? 'https://orangenyaa.org' : 'https://0.0.0.0:8090';

console.log('allowedOrigin', allowedOrigin);

if (isProd) {
    app.listen(PORT, () => {
        console.log(`Running on :${PORT}`)
    });
} else {
    const server = https.createServer({ key: key, cert: cert }, app);
    server.listen(PORT, () => {
        console.log(`Running on :${PORT}`)
    });
}

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

app.use(function (req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.json({
    error: 'error'
  });
});