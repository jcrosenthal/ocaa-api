# ocaa-api

### To restart and update api in production environment:

`$ cd ocaa-api`

`$ ssh -i "api.pem" ec2-user@ec2-3-215-140-200.compute-1.amazonaws.com`

`$ rm -rf ocaa-api`

`$ git clone https://github.com/JamesRosenthal/ocaa-api.git`

`$ cp -a ocaa-api/. .`

`$ pm2 kill`

`$ pm2 start npm --no-automation --name ocaa-api -- run prod`

`$ pm2 save`

`$ pm2 startup`

(copy paste)
sudo env PATH=$PATH:/home/ec2-user/.nvm/versions/node/v8.10.0/bin /home/ec2-user/.nvm/versions/node/v8.10.0/lib/node_modules/pm2/bin/pm2 startup systemd -u ec2-user --hp /home/ec2-user