set -e

sudo su


# Update The System

apt update

apt upgrade

apt dist-upgrade

apt install -f


# Clean Cache

apt clean

apt autoclean

apt autoremove


# Update Ruby Gems

gem update `gem outdated | cut -d ' ' -f 1`


# Update Modules Python

pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U

pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U


# Update Node Packages

npm update -g


# Clean Packages / apt install deborphan -y

apt-get remove $(deborphan)


# Clean Trash / apt install trash-cli

sudo trash-empty


clear
