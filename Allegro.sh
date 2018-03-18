
# Permissions

set -e

sudo su


# Dependencies - Askubuntu.com/questions/840257/e-package-libpng12-0-has-no-installation-candidate-ubuntu-16-10-gnome

apt install -y git build-essential subversion cmake xorg-dev libgl1-mesa-dev libglu-dev libpng-dev libz-dev libcurl4-gnutls-dev libfreetype6-dev libjpeg-dev libvorbis-dev libopenal-dev libphysfs-dev libgtk2.0-dev libasound-dev libflac-dev libdumb1-dev exuberant-ctags dvi2ps dvipdfmx latex2html pandoc liballegro-dialog5-dev


# Ppa

add-apt-repository ppa:allegro/5.2


# Update 'n install

apt-get update

apt-get install liballegro5-dev
