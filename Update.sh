#!/bin/bash

# System

sudo apt update && && apt dist-upgrade

apt install -f

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
