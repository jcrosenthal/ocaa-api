'use strict';

const fs = require('fs');
const path = require('path');
const Sequelize = require('sequelize');
const basename = path.basename(__filename);
const env = process.env.NODE_ENV;
const config = require(__dirname + '/../config/config.json')[env];
const db = {};

let sequelize;

// console.log(process.env);
// /rds-ca-2019-root.pem
// /rds-combined-ca-bundle.pem
const rdsCa = fs.readFileSync(__dirname + '/rds-combined-ca-bundle.pem');

sequelize = new Sequelize(config.database, config.username, config.password, Object.assign(config, {
  maxConcurrentQueries: 100,
  pool: {
    maxConnections: 5,
    maxIdleTime: 30
  },
  dialect: 'mysql',
  "dialectOptions": {
    "ssl": {
      rejectUnauthorized: true,
      ca: [rdsCa],
      checkServerIdentity: (host, cert) => {
        const error = tls.checkServerIdentity(host, cert);
        if (error && !cert.subject.CN.endsWith('.rds.amazonaws.com')) {
          return error;
        }
      }
    }
  }
}));

console.log(sequelize);

fs
  .readdirSync(__dirname)
  .filter(file => {
    return (file.indexOf('.') !== 0) && (file !== basename) && (file.slice(-3) === '.js');
  })
  .forEach(file => {
    const model = sequelize['import'](path.join(__dirname, file));
    db[model.name] = model;
  });

Object.keys(db).forEach(modelName => {
  if (db[modelName].associate) {
    db[modelName].associate(db);
  }
});

db.sequelize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;