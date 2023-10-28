#!/bin/bash

echo "Checking if nginx is active..."
systemctl is-active

echo "Updating APT package list..."
sudo apt-get update

echo "Installing Nginx..."
sudo apt-get -y install nginx

echo "Starting Nginx..."
systemctl start nginx

echo "Checking if Nginx is active..."
systemctl is-active nginx

echo "Creating a 'labs' directory..."
sudo mkdir /var/www/html/labs

echo "Listing 'labs' directory permissions..."
ls -ld /var/www/html/labs

echo "Changing owner of 'labs' directory to julias:root..."
sudo chown julias:root /var/www/html/labs

echo "Creating a symbolic link from 'labs' to /home/julias/html..."
ln -s /var/www/html/labs /home/julias/html

echo "Listing contents of the current directory..."
ls -l

echo "Changing directory to 'html'..."
cd html

echo "Creating an 'index.html' file..."
touch index.html

echo "Opening 'index.html' in the nano text editor..."
nano index.html

echo "Displaying the contents of 'index.html'..."
cat index.html
