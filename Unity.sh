#!/bin/bash

# Update source list

sudo apt update


# Install programs

apt install git nodejs ffmpeg gzip build-essential default-jre default-jdk gdebi monodevelop debconf npm


## Depedencies

apt update && apt install -f


# Install libs

apt install libcanberra-gtk-module lib32stdc++6 libasound2 libav-tools libxdamage1 libxdamage-dev lib32gcc1 libc6 libc6-i386 frei0r-plugins libcairo2 libcap2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libfreetype6 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libgl1 libglib2.0-0 libglu1-mesa libglu1 libgtk2.0-0 libnspr4 libnss3 libpango1.0-0 libstdc++6 libx11-6 libxcomposite1 libxcursor1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxtst6 zlib1g


## Depedencies

apt update && apt install -f && apt dist-upgrade


# Unity 3D - 2017.2, another releases at forum.unity.com/threads/unity-on-linux-release-notes-and-known-issues.350256

wget http://beta.unity3d.com/download/ee86734cf592/unity-editor_amd64-2017.2.0f3.deb


# Install Unity 3D

sudo gdebi unity-editor_amd64-2017.2.0f3.deb
