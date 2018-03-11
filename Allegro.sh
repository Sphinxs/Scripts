
# Permissions

set -e

sudo su


# Dependencies - Askubuntu.com/questions/840257/e-package-libpng12-0-has-no-installation-candidate-ubuntu-16-10-gnome

apt install -y git build-essential subversion cmake xorg-dev libgl1-mesa-dev libglu-dev install libpng-dev libz-dev libcurl4-gnutls-dev libfreetype6-dev libjpeg-dev libvorbis-dev libopenal-dev libphysfs-dev libgtk2.0-dev libasound-dev libflac-dev libdumb1-dev install exuberant-ctags dvi2ps dvipdfmx latex2html pandoc liballegro-dialog5-dev


# Ppa

add-apt-repository ppa:allegro/5.2


# Update 'n install

apt-get update

apt-get install liballegro5-dev


# Get some example and put it in a .cpp file : Wiki.allegro.cc/index.php?title=Allegro_5_Tutorial/Displays

# g++ Arch.cpp -o Arch -Wall -I/usr/include/allegro5 -L/usr/local/lib -lallegro && ./Arch

# g++ Arch.cpp -o Arch -I/usr/include/allegro5 -L/usr/local/lib -Wall -lallegro `pkg-config --libs allegro-5 allegro_audio-5 allegro_dialog-5 allegro_image-5 allegro_memfile-5 allegro_primitives-5 allegro_acodec-5 allegro_color-5 allegro_font-5 allegro_main-5 allegro_physfs-5 allegro_ttf-5`
