
cd ~/Documentos

sudo apt install -y git build-essential subversion cmake xorg-dev libgl1-mesa-dev libglu-dev install libpng-dev libz-dev libcurl4-gnutls-dev libfreetype6-dev libjpeg-dev libvorbis-dev libopenal-dev libphysfs-dev libgtk2.0-dev libasound-dev libflac-dev libdumb1-dev install exuberant-ctags dvi2ps dvipdfmx latex2html pandoc

git clone https://github.com/liballeg/allegro5.git allegro

sudo mv ~/Documentos/allegro /opt

cd /opt/allegro && cmake -DCMAKE_INSTALL_PREFIX=/usr .

make

sudo make install
