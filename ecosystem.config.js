// Options reference: https://pm2.keymetrics.io/docs/usage/application-declaration/
module.exports = {
  apps: [{
    name: 'OCAA API',
    // script: './index.js',
    script: 'nodemon ./bin/www',
    instances: 1,
    autorestart: true,
    watch: true,
    max_memory_restart: '1G',
    "env_production": {
      "NODE_ENV": "production"
    }
  }],
  deploy: {
    production: {
      key: './keys/ocaa.pem',
      user: 'ec2-user',
      host: 'ec2-54-85-108-245.compute-1.amazonaws.com',
      ref: 'origin/master',
      repo: 'https://github.com/JamesRosenthal/ocaa-api.git',
      'pre-setup': 'rm -rf ocaa-api; npm i pm2 -g; sudo yum install -y git',
      ssh_options: "StrictHostKeyChecking=no",
      path: '/home/ec2-user/ocaa-api',
      port: '5000',
      'post-deploy': 'npm install && pm2 reload ecosystem.config.js --env production && npm run prod',
      "env": {
        "NODE_ENV": "production"
      }
    }
  }
};

// pm2 deploy ecosystem.config.js production setup
// pm2 deploy ecosystem.config.js production