#!/bin/bash

# System
sudo apt update && apt full-upgrade

sudo apt autoclean && apt autoremove

snap refresh

flatpak update

# Ruby
gem update `gem outdated | cut -d ' ' -f 1`

# Python
pip install --upgrade pip

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
