
# chmod +x Mongo.sh

set -e

sudo su


# Public Key

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5

# Source List - Debian 8

echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.6 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list

# Update & Install Packages

apt update && apt install -y mongodb-org

# Settings File

echo "
[Unit]
Description=High-performance, schena-free document-oriented database
After=network.target

[Service]
User=mongodb
ExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf

[Install]
WantedBy=multi-user.target
" > /etc/systemd/system/mongodb.service

# Start Automatically

systemctl enable mongodb

# Start Service

service mongod start

# Open Run Time

mongod || mongo d