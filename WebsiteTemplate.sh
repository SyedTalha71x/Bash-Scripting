#!/bin/bash

# Sample Script to setup a website 

echo "Installing all dependencies"
echo "---------------------------"
sudo apt --fix-broken install -y
sudo apt install wget unzip apache2 -y > /dev/null


echo "Starting and Enabling Apache Service"
echo "------------------------------------"
sudo systemctl start $1
sudo systemctl enable $2


echo "Starting Artifact Deployment"
echo "----------------------------"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
                   
wget https://www.tooplate.com/zip-templates/2134_gotto_job.zip > /dev/null
unzip 2134_gotto_job.zip > /dev/null
sudo cp -rf 2134_gotto_job/* /var/www/html/
echo

echo "Restarting Apache Service"
echo "------------------------"
sudo systemctl restart apache2
echo

echo "Removing Temporary Files"
echo "------------------------"
rm -rf /tmp/webfiles
echo

# Checking Apache service status and listing HTML files
sudo systemctl status apache2
ls /var/www/html/

