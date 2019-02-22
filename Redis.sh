!#/bin/bash

sudo su

# Install Redis via APT
apt install redis


# Install Redis manually

# Install command manager
apt install tcl

# Create the base folder
cd /home && mkdir redis && cd redis

# Download Redis
curl -O http://download.redis.io/redis-stable.tar.gz && tar xzvf redis-stable.tar.gz

# Build and install
cd redis-stable && make && make test && make install

# Create the configuration folder to redis
mkdir /etc/redis

# Copy the configurations to the local configuration
cp /home/redis/redis-stable/redis.conf /etc/redis

# Open the _/etc/redis/redis.conf_ file and change `supervised no` to `supervised systemd` and `dir`
# to `dir /var/lib/redis` or `/usr/local/etc/redis`. If the error _failed to start redis.service,
# unit redis.service not found_ is issued, [create](https://stackoverflow.com/questions/40317106/failed-to-start-redis-service-unit-redis-server-service-is-masked) the service.
#
# https://stackoverflow.com/questions/40317106/failed-to-start-redis-service-unit-redis-server-service-is-masked
#
# https://gist.github.com/kapkaev/4619127
#
# https://stackoverflow.com/questions/19581059/misconf-redis-is-configured-to-save-rdb-snapshots
