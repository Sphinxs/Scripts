#!/bin/bash

# Download
wget -cq https://mirror02.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz

# Give permissions
sudo su

# Create folder
mkdir /opt/popcorn

# Unzip
tar -Jxf Popcorn-Time-0.3.10-Linux-64.tar.xz -C /opt/popcorn/

# Add to menu
echo '[Desktop Entry]\n Version=0.3\n Encoding=UTF-8\n Name=Popcorn\n Name[en_US]=Popcorn\n GenericName=Torrent Stream Player\n GenericName[en_US]=Torrent Stream Player\n Comment=Run the Popcorn application\n Comment[en_US]=Run the Popcorn application\n Type=Application\n Terminal=false\n Exec=/opt/popcorn/Popcorn-Time\n Icon=/opt/popcorn/src/app/images/icon.png\n Categories=AudioVideo;Player;Video;\n Keywords=Player;Audio;Video;' > /usr/share/applications/popcorn.desktop