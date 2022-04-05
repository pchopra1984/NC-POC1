#!/bin/bash -xe 
sudo aws s3 cp s3://myghost-poc/test/config/apache/ghost-ssl.conf /etc/apache2/sites-available/;
sudo aws s3 cp s3://myghost-poc/test/config/apache/ghost.conf /etc/apache2/sites-available/;
sudo aws s3 cp s3://myghost-poc/test/config/ghost/config.production.json /var/www/drone/;
sudo aws s3 cp s3://myghost-poc/test/ssl/fe-pradeepchopra-ssl.crt /etc/apache2/ssl/;
sudo aws s3 cp s3://myghost-poc/test/ssl/fe-pradeepchopra-ssl.key /etc/apache2/ssl/;
sudo chown ubuntu:ubuntu /var/www/drone/config.production.json;
sudo a2ensite ghost;
sudo a2ensite ghost-ssl;
sudo /etc/init.d/apache2 restart;
cd /var/www/drone/;
runuser -l ubuntu 'ghost restart';

