#!/bin/bash

# System

sudo apt update && apt update –fix-missing && apt dist-upgrade && apt upgrade 

apt install -f && dpkg –configure -a && apt --fix-broken install

apt clean && apt autoclean && apt autoremove


# Gems

# gem update `gem outdated | cut -d ' ' -f 1`


# Modules Python

# pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U


# Node Packages

# npm update -g

# yarn upgrade


# Trash-Cli

# trash-empty
