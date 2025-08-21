#!/bin/bash
echo "Installing Nginx if not present..."
sudo yum install -y nginx
sudo cp -r * /var/www/html/
