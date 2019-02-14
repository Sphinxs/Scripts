#!/bin/bash

# System
sudo apt update

sudo apt full-upgrade  # -y

apt install -f

apt clean && apt autoclean && apt autoremove


# Ruby
gem update `gem outdated | cut -d ' ' -f 1`


# Python
pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U


# Javascript
npm update -g

yarn upgrade


# Trash
trash-empty


# Dependencies
sudo deborphan | xargs sudo apt-get -y remove --purge

sudo deborphan --guess-data | xargs sudo apt-get -y remove --purge

# Cache
sudo sh -c 'echo 1 >/proc/sys/vm/drop_caches'