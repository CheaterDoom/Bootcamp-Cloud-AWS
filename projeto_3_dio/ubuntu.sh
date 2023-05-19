#!/bin/bash
sudo su
apt update -y
apt-get update -y
apt upgrade -y
apt install apache2 -y
apt install unzip -y
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
npm install -g npm@9.6.6
node -v
npm -v

echo "Download do Servless API"

npm install -g serverless
echo "fim"
