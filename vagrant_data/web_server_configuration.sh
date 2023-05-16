#!/bin/bash

echo "Start provisioning the web server..."
 
echo "Installing requirements..." 
apt install apache2 -y
apt install unzip -y

echo "Downloading Web application..."
cd /tmp
wget https://github.com/victor-cleber/MyWallet/archive/refs/heads/main.zip
unzip -o main.zip

echo "Installing application..."
cp -R MyWallet-main/* /var/www/html

echo "Web Server configuration completed"