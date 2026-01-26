#!/bin/bash

# Update package list
sudo apt-get update

# Install Nginx
sudo apt-get install nginx -y

# Start Nginx
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

echo "<h1>Nginx installed successfully</h1>" | sudo tee /var/www/html/index.html
