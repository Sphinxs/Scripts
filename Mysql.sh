#!/bin/bash

# Create the MySQL folder
mkdir -p /var/lib/mysql

# Install the MySQL
sudo apt install mysql-server mysql-client mysql-common

# Grant the permissions
chown -R mysql.mysql /var/lib/mysql

chmod -R 775 /var/lib/mysql

# Create a link and restart the App Armor
sudo service apparmor stop

sudo ln -s /etc/apparmor.d/usr.sbin.mysqld /etc/apparmor.d/disable/

sudo service apparmor restart

sudo aa-status

# Restart the system
sudo reboot

# MySQL config folder
# /etc/mysql/mysql.conf.d