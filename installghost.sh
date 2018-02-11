#!/bin/bash

sudo apt update && sudo apt upgrade
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt install nodejs
curl -L https://ghost.org/zip/ghost-latest.zip -o ghost.zip
#wget https://ghost.org/zip/ghost-latest.zip -O ghost.zip
sudo mkdir -p /var/www/ghost/
sudo apt install unzip

sudo unzip ghost.zip -d /var/www/ghost/
cd /var/www/ghost/

sudo npm install --production
sudo cp config.example.js config.js
sudo nano config.js

#Find the following line.

#url: 'http://my-ghost-blog.com',

#Change the URL to your domain name or your server’s IP address.

#url: 'http://your_domain_or_ip_address',

#Then find the following lines.

# server: {
#    host: '127.0.0.1',
#    port: '2368'
# }

#Change 127.0.0.1 to 0.0.0.0, which makes your Ghost blog available for the whole Internet. Save and close the file.


sudo npm start --production
gnome-open "http://localhost:2368"
