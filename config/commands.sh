sudo apt install gnome-shell
sudo apt install gnome-session
sudo apt install vanilla-gnome-default-settings vanilla-gnome-desktop
sudo apt install ubuntu-gnome-default-settings
sudo apt install gnome-session
sudo apt-get install gnome-session-flashback
sudo apt install gnome-shell
sudo gedit #!/bin/bash
sudo gedit ubuntu-gnome.sh
sudo nano ubuntu-gnome.sh
chmod +x ubuntu-gnome.sh 
sudo chmod +x ubuntu-gnome.sh 
./ubuntu-gnome.sh 
sudo reboot
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update 
sudo apt-get install google-chrome-stable
sudo apt-get upgrade
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,maximize,minimize:'
gsettings set org.gnome.desktop.wm.preferences button-layout ':close,maximize,minimize'
gsettings set org.gnome.desktop.wm.preferences button-layout ':maximize,minimize,close'
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize, maximize,close'
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
sudo apt install unity-tweak-tool
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
subl
apt-get install -y --no-install-recommends dirmngr ca-certificates libexpat1 libffi6 libgdbm3 libreadline7 \ 
libreadline6 libreadline6-dev libsqlite3-0 libssl-dev 
apt-get install dirmngr apt-get install -y --no-install-recommends dirmngr ca-certificates libexpat1 libffi6 libgdbm3 libreadline7 \ 
libreadline6 libreadline6-dev libsqlite3-0 libssl-dev 
apt-get install -y --no-install-recommends dirmngr ca-certificates libexpat1 libffi6 libgdbm3 libreadline7 \ 
libreadline6 libreadline6-dev libsqlite3-0 libssl-dev 
sudo apt-get install -y --no-install-recommends dirmngr ca-certificates libexpat1 libffi6 libgdbm3 libreadline7  libreadline6 libreadline6-dev libsqlite3-0 libssl-dev 
export GPG_KEY 0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
export GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
export PYTHON_VERSION 3.7.0a3
export PYTHON_VERSION=3.7.0a3
et -ex && buildDeps=" \
cursesw5-dev \
e-dev \
d -v gpg > /dev/null || echo 'gnupg dirmngr') \
" && apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* && wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" && wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" && export GNUPGHOME="$(mktemp -d)" && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" && gpg --batch --verify python.tar.xz.asc python.tar.xz && rm -rf "$GNUPGHOME" python.tar.xz.asc && mkdir -p /usr/src/python && tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz && rm python.tar.xz && cd /usr/src/python && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-loadable-sqlite-extensions --enable-shared --with-system-expat --with-system-ffi --without-ensurepip && make -j "$(nproc)" && make install && ldconfig && apt-get purge -y --auto-remove $buildDeps && find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' + && rm -rf /usr/src/python
sudo apt install gnome-shell-extensions
sudo add-apt-repository ppa:system76/pop
sudo apt-get install pop-theme
sudo apt-get update
sudo apt-get install pop-theme
gsettings set org.gnome.desktop.interface gtk-theme "Ant"
gsettings set org.gnome.desktop.wm.preferences theme "Ant"
mkdir ~/.themes/
cd themes
cd ~/.themes/
nautilus
cd ~
https://github.com/daniruiz/Flat-Remix
git clone https://github.com/daniruiz/Flat-Remix
git clone https://github.com/mervick/arc-dark-software-center
cd arc-dark-software-center
sudo bash install.sh
cd arc-dark-software-center
sudo bash install.sh
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install arc-theme
gnome-tweak-tool
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme
cd /usr/share/themes/
git clone https://github.com/daniruiz/Flat-Remix
gnome-tweak-tool
cd ~/.themes/
l
cd flat-dark/
l
cp ../
cd 
cp -R ~/.themes/flat-dark /usr/share/themes
sudo cp -R ~/.themes/flat-dark /usr/share/themes
gnome-tweak-tool
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr
sudo make install
sudo apt install git
sudo make install
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr
ls
./autogen.sh --prefix=/usr
sudo ./autogen.sh --prefix=/usr
sudo apt install autoreconf
subl
sudo apt install autoconf automake libgtk-3-dev 
sudo ./autogen.sh --prefix=/usr
sudo make install
sudo nautilus
sudo cp ~/Flat-Remix/Flat\ Remix Dark /usr/share/themes/
sudo cp ~/Flat-Remix/Flat\ Remix\ Dark/ /usr/share/themes/
sudo cp -R ~/Flat-Remix/Flat\ Remix\ Dark/ /usr/share/themes/
gnome-tweak-tool
sudo add-apt-repository ppa:moka/daily
sudo apt-get update
sudo apt-get install moka-icon-theme
gnome-tweak-tool
set -ex  && buildDeps=" dpkg-dev gcc libbz2-dev libc6-dev libexpat1-dev libffi-dev libgdbm-dev liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev make tcl-dev tk-dev wget xz-utils zlib1g-dev $(command -v gpg > /dev/null || echo 'gnupg dirmngr') " && apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*
su
set -ex  && buildDeps=" dpkg-dev gcc libbz2-dev libc6-dev libexpat1-dev libffi-dev libgdbm-dev liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev make tcl-dev tk-dev wget xz-utils zlib1g-dev $(command -v gpg > /dev/null || echo 'gnupg dirmngr') " && apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*
set -ex  && buildDeps=" dpkg-dev gcc libbz2-dev libc6-dev libexpat1-dev libffi-dev libgdbm-dev liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev make tcl-dev tk-dev wget xz-utils zlib1g-dev $(command -v gpg > /dev/null || echo 'gnupg dirmngr') " && apt-get update && apt-get install -y $buildDeps --no-install-recommends 
apt-get update
sudo apt install dpkg-dev gcc libbz2-dev libc6-dev libexpat1-dev libffi-dev libgdbm-dev liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev make tcl-dev tk-dev wget xz-utils zlib1g-dev 
rm -rf /var/lib/apt/lists/*
sudo rm -rf /var/lib/apt/lists/*
wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"
export GNUPGHOME="$(mktemp -d)"
gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 
gpg --batch --verify python.tar.xz.asc python.tar.xz
export GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
export PYTHON_VERSION=3.7.0a3
gpg --batch --verify python.tar.xz.asc python.tar.xz
gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 
wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"
gpg --batch --verify python.tar.xz.asc python.tar.xz
rm -rf "$GNUPGHOME" python.tar.xz.asc mkdir -p /usr/src/python
tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz
rm python.tar.xz 
rm -rf "$GNUPGHOME" python.tar.xz.asc
mkdir -p /usr/src/python
sudo mkdir -p /usr/src/python
tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz
wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"
tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz
sudo tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz
rm python.tar.xz 
cd /usr/src/python
gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" ./configure --build="$gnuArch" --enable-loadable-sqlite-extensions --enable-shared --with-system-expat --with-system-ffi --without-ensurepip make -j "$(nproc)" make install 
gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" ./configure --build="$gnuArch" --enable-loadable-sqlite-extensions --enable-shared --with-system-expat --with-system-ffi --without-ensurepip 
sudo gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" ./configure --build="$gnuArch" --enable-loadable-sqlite-extensions --enable-shared --with-system-expat --with-system-ffi --without-ensurepip 
make -j "$(nproc)"
sudo make -j "$(nproc)"
su --user usr
su usr
sudo apt-get update
sudo apt 
sudo apt-get install pop-theme
sudo set -ex  && sudo buildDeps=" dpkg-dev gcc libbz2-dev libc6-dev libexpat1-dev libffi-dev libgdbm-dev liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev make tcl-dev tk-dev wget xz-utils zlib1g-dev $(command -v gpg > /dev/null || echo 'gnupg dirmngr') " && sudo apt-get update && sudo pt-get install -y $buildDeps --no-install-recommends && sudo rm -rf /var/lib/apt/lists/*
sudo buildDeps=" dpkg-dev gcc libbz2-dev libc6-dev libexpat1-dev libffi-dev libgdbm-dev liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev make tcl-dev tk-dev wget xz-utils zlib1g-dev $(command -v gpg > /dev/null || echo 'gnupg dirmngr') " && sudo apt-get update && sudo pt-get install -y $buildDeps --no-install-recommends && sudo rm -rf /var/lib/apt/lists/*
export GPG_KEY 0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
export GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
export PYTHON_VERSION=3.7.0a3
wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}"
wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"
apt-get update && apt-get install -y --no-install-recommends gr e7 \ 
set -ex && buildDeps=" dpkg-dev gcc libbz2-dev libc6-dev libexpat1-dev libffi-dev libgdbm-dev liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev make tcl-dev tk-dev wget xz-utils zlib1g-dev $(command -v gpg > /dev/null || echo 'gnupg dirmngr') " && apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* && wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" && wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" && export GNUPGHOME="$(mktemp -d)" && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" && gpg --batch --verify python.tar.xz.asc python.tar.xz && rm -rf "$GNUPGHOME" python.tar.xz.asc && mkdir -p /usr/src/python && tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz && rm python.tar.xz && cd /usr/src/python && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-loadable-sqlite-extensions --enable-shared --with-system-expat --with-system-ffi --without-ensurepip && make -j "$(nproc)" && make install && ldconfig && apt-get purge -y --auto-remove $buildDeps d /usr/local -depth ame test -o -name tests \) \) ame '*.pyc' -o -name '*.pyo' \) \) 
npm install dockerfile-parse
sudo apt install npm
npm
nodejs
cd Downloads/
l
dpkg -i curl_7.55.1.orig.tar.gz
sudo dpkg -i curl_7.55.1.orig.tar.gz
tar zxvf curl_7.55.1.orig.tar.gz 
cd curl-7.55.1/
l
./install-sh 
chmod +x install-sh 
./install-sh 
make
make install
sudo make install
cd apt-get update && apt-get install -y --no-install-recommends gr e7
set -ex && buildDeps=" dpkg-dev gcc libbz2-dev libc6-dev libexpat1-dev libffi-dev libgdbm-dev liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev make tcl-dev tk-dev wget xz-utils zlib1g-dev $(command -v gpg > /dev/null || echo 'gnupg dirmngr') " && apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* && wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" && wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" && export GNUPGHOME="$(mktemp -d)" && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" && gpg --batch --verify python.tar.xz.asc python.tar.xz && rm -rf "$GNUPGHOME" python.tar.xz.asc && mkdir -p /usr/src/python && tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz && rm python.tar.xz && cd /usr/src/python && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-loadable-sqlite-extensions --enable-shared --with-system-expat --with-system-ffi --without-ensurepip && make -j "$(nproc)" && make install && ldconfig && apt-get purge -y --auto-remove $buildDeps d /usr/local -depth ame test -o -name tests \) \) ame '*.pyc' -o -name '*.pyo' \) \) 
buildDeps=" 
dpkg-dev 
gcc 
libbz2-dev 
libc6-dev 
libexpat1-dev 
libffi-dev 
libgdbm-dev 
liblzma-dev 
libncursesw5-dev 
libreadline-dev 
libsqlite3-dev 
libssl-dev 
make 
tcl-dev 
tk-dev 
wget 
xz-utils 
zlib1g-dev 
$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 
"
sudo apt-get update
make
make install
sudo wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"
sudo npm install dockerfile-parse
nodejs
sudo npm install dockerfile-parse
cd da
cd dataorg
cd dev/dataorg/
l
sudo apt-get install -y $buildDeps --no-install-recommends
sudo cd /usr/src/python 
cd /usr/src/python 
gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 
sudo ./configure --build="$gnuArch" --enable-loadable-sqlite-extensions --enable-shared --with-system-expat --with-system-ffi --without-ensurepip 
make install
sudo make install
pip3 install --upgrade pip
ind /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \
ind /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' + 
find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' + && rm -rf /usr/src/python
sudo find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' + && rm -rf /usr/src/python
sudo find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' + && sudo rm -rf /usr/src/python
cd /usr/local/bin
sudo n -s idle3 idle
sudo n -s pydoc3 pydoc
sudo n -s python3 python
cd /usr/local/bin
sudo ln -s idle3 idle
sudo ln -s pydoc3 pydoc
sudo ln -s python3 python
sudo ln -s python3-config python-config
set -ex; apt-get update; apt-get install -y --no-install-recommends wget; rm -rf /var/lib/apt/lists/*; wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; apt-get purge -y --auto-remove wget; python get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" ; pip --version; find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' +; rm -f get-pip.py
cd /usr/src/python 
sudo ./configure --build="$gnuArch" --enable-loadable-sqlite-extensions --enable-shared --with-system-expat --with-system-ffi --without-ensurepip 
make install
sudo make install
sudo find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' + && sudo rm -rf /usr/src/python
set -ex; apt-get update; apt-get install -y --no-install-recommends wget; rm -rf /var/lib/apt/lists/*; wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; apt-get purge -y --auto-remove wget; python get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" ; pip --version; find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' +; rm -f get-pip.py
set -ex; apt-get update; apt-get install -y --no-install-recommends wget; rm -rf /var/lib/apt/lists/*; wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; apt-get purge -y --auto-remove wget; python get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" ; pip --version; find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' +; rm -f get-pip.py
cd /usr/src/python
sudo mkdir -p /usr/src/python 
sudo tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 
sudo wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 
export ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
export ENV PYTHON_VERSION=3.7.0a3
sudo wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 
sudo mkdir -p /usr/src/python 
sudo tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 
cd /usr/src/python 
gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 
sudo ./configure --build="$gnuArch" --enable-loadable-sqlite-extensions --enable-shared --with-system-expat --with-system-ffi --without-ensurepip 
sudo make -j "$(nproc)" 
sudo make install
sudo find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' + && sudo rm -rf /usr/src/python
cd /usr/local/bin
sudo ln -s idle3 idle
sudo ln -s pydoc3 pydoc
sudo ln -s python3 python
sudo ln -s python3-config python-config
export PYTHON_PIP_VERSION 9.0.1
export PYTHON_PIP_VERSION=9.0.1
set -ex; apt-get update; apt-get install -y --no-install-recommends wget; rm -rf /var/lib/apt/lists/*; wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; apt-get purge -y --auto-remove wget; python get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" ; pip --version; find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' +; rm -f get-pip.py
chmod +x install.sh 
./install.sh 
su 
su usr
wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py';
python get-pip.py 
python3 get-pip.py 
export PYTHON_PIP_VERSION=9.0.1
python get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" 
python get-pip.py --disable-pip-version-check --no-cache-dir \
python get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" 
python get-pip.py --disable-pip-version-check --no-cache-dir python get-pip.py --disable-pip-version-check --no-cache-dir \
python get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" ; 
python get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" 
python3 get-pip.py 
locate libpython3.7m.so.1.0
sudo apt install libpython3.7m.so.1.0
pip install pyinstaller
sudo ap install python-pip
sudo apt install python-pip
pip install pyinstaller
python get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" 
python3 get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" 
export LD_LIBRARY_PATH=/usr/lib/
python3 get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" 
LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/python
LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/python get-pip.py 
sudo LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/python get-pip.py 
sudo LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/python3 get-pip.py 
export LD_LIBRARY_PATH=/usr/local/lib
python3 get-pip.py 
find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' +;
sudo find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' +;
find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' +;
sudo apt-get update 
sudo apt-get install -y software-properties-common 
sudo apt-add-repository -y ppa:nginx/stable 
sudo apt-get update 
sudo apt-get install -y nginx 
sudo ln -sf /dev/stdout /var/log/nginx/access.log
sudo ln -sf /dev/stderr /var/log/nginx/error.log
apt-get install -y git python python-dev python-setuptools python-pip supervisor gettext mysql-client libmysqlclient-dev libpq-dev sqlite3 awscli gcc pwgen python-software-properties \
sudo apt-get install -y git python python-dev python-setuptools python-pip supervisor gettext mysql-client libmysqlclient-dev libpq-dev sqlite3 awscli gcc pwgen python-software-properties software-properties-common 
sudo apt-get install -y git python python-dev python-setuptools python-pip supervisor gettext mysql-client libmysqlclient-dev libpq-dev sqlite3 awscli gcc pwgen python-software-properties software-properties-common  gnuph dirmng
sudo apt-get install -y git python python-dev python-setuptools python-pip supervisor gettext mysql-client libmysqlclient-dev libpq-dev sqlite3 awscli gcc pwgen python-software-properties software-properties-common  gnuph dirmgr
sudo apt-get install -y git python python-dev python-setuptools python-pip supervisor gettext mysql-client libmysqlclient-dev libpq-dev sqlite3 awscli gcc pwgen python-software-properties software-properties-common  gnuph dimngr
sudo roupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
sudo groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
sudo apt-get install -y --no-install-recommends ca-certificates 
sudo apt-get install -y git python python-dev python-setuptools python-pip supervisor gettext mysql-client libmysqlclient-dev libpq-dev sqlite3 awscli gcc pwgen python-software-properties software-properties-common  gnuph dimngr
sudo apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* sudo wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" sudo wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" sudo export GNUPGHOME="$(mktemp -d)" sudo gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 sudo gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu sudo rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc sudo chmod +x /usr/local/bin/gosu sudo gosu nobody true sudo apt-get purge -y --auto-remove ca-certificates wget
sudo wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 
sudo wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 
sudo export GNUPGHOME="$(mktemp -d)" 
sudo gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 
export GOSU_VERSION=1.10
sudo wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 
sudo wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 
sudo export GNUPGHOME="$(mktemp -d)" 
export GNUPGHOME="$(mktemp -d)" 
sudo gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 
sudo gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 
sudo rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 
sudo chmod +x /usr/local/bin/gosu 
sudo gosu nobody true 
apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
sudo apt-get update
sudo apt-get install -y locales
sudo rm -rf /var/lib/apt/lists/* sudo localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
cat get-pip.py 
./install.sh 
sudo wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 
./install.sh 
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
cd dev/dataorg/
cd config
./install.sh 
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install -y nodej
sudo apt install -y nodejs
nodejs --version
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
nodejs --version
subl parse_dockerfile.js
node parse_dockerfile.js 
sudo node parse_dockerfile.js 
sudo npm install dockerfile-parse
touch package.json
npm install
cd ../
npm install
npm install dockerfile-parse
node config/parse_dockerfile.js 
node
cd dev/dataorg/
subl
sudo ln -s /usr/local/lib/libpython2.7.so.1.0 /usr/lib/libpython2.7.so.1.0
dpkgArch="$(dpkg --print-architecture)"; case "$dpkgArch" in amd64|i386|ppc64el) l.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; \
apt-get update; \
;; \
*) \
# we're on an architecture upstream doesn't officially build for
# let's build binaries from their published source packages
echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; \
\
tempDir="$(mktemp -d)"; \
cd "$tempDir"; \
\
savedAptMark="$(apt-mark showmanual)"; \
\
# build .deb files from upstream's source packages (which are verified by apt-get)
apt-get update; \
apt-get build-dep -y \
postgresql-common pgdg-keyring \
"postgresql-$PG_MAJOR=$PG_VERSION" \
; \
DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" \
apt-get source --compile \
postgresql-common pgdg-keyring \
"postgresql-$PG_MAJOR=$PG_VERSION" \
; \
# we don't remove APT lists here because they get re-downloaded and removed later
\
# reset apt-mark's "manual" list so that "purge --auto-remove" will remove all build dependencies
# (which is done after we install the built packages so we don't have to redownload any overlapping dependencies)
apt-mark showmanual | xargs apt-mark auto > /dev/null; \
apt-mark manual $savedAptMark; \
\
# create a temporary local APT repo to install from (so that dependency resolution can be handled by APT, as it should be)
ls -lAFh; \
dpkg-scanpackages . > Packages; \
grep '^Package: ' Packages; \
echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; \
# work around the following APT issue by using "Acquire::GzipIndexes=false" (overriding "/etc/apt/apt.conf.d/docker-gzip-indexes")
#   Could not open file /var/lib/apt/lists/partial/_tmp_tmp.ODWljpQfkE_._Packages - open (13: Permission denied)
#   ...
#   E: Failed to fetch store:/var/lib/apt/lists/partial/_tmp_tmp.ODWljpQfkE_._Packages  Could not open file /var/lib/apt/lists/partial/_tmp_tmp.ODWljpQfkE_._Packages - open (13: Permission denied)
apt-get -o Acquire::GzipIndexes=false update; \
;; \
esac; \
\
apt-get install -y postgresql-common; \
sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; \
apt-get install -y \
"postgresql-$PG_MAJOR=$PG_VERSION" \
"postgresql-contrib-$PG_MAJOR=$PG_VERSION" \
; \
\
rm -rf /var/lib/apt/lists/*; \
\
if [ -n "$tempDir" ]; then \
# if we have leftovers from building, let's purge them (including extra, unnecessary build deps)
apt-get purge -y --auto-remove; \
rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; \
fi
dpkgArch="$(dpkg --print-architecture)"; case "$dpkgArch" in amd64|i386|ppc64el) l.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; \
apt-get update; \
;; \
*) \
# we're on an architecture upstream doesn't officially build for
# let's build binaries from their published source packages
echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; \
\
tempDir="$(mktemp -d)"; \
cd "$tempDir"; \
\
savedAptMark="$(apt-mark showmanual)"; \
\
# build .deb files from upstream's source packages (which are verified by apt-get)
apt-get update; \
apt-get build-dep -y \
postgresql-common pgdg-keyring \
"postgresql-$PG_MAJOR=$PG_VERSION" \
; \
DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" \
apt-get source --compile \
postgresql-common pgdg-keyring \
"postgresql-$PG_MAJOR=$PG_VERSION" \
; \
# we don't remove APT lists here because they get re-downloaded and removed later
\
# reset apt-mark's "manual" list so that "purge --auto-remove" will remove all build dependencies
# (which is done after we install the built packages so we don't have to redownload any overlapping dependencies)
apt-mark showmanual | xargs apt-mark auto > /dev/null; \
apt-mark manual $savedAptMark; \
\
# create a temporary local APT repo to install from (so that dependency resolution can be handled by APT, as it should be)
ls -lAFh; \
dpkg-scanpackages . > Packages; \
grep '^Package: ' Packages; \
echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; \
# work around the following APT issue by using "Acquire::GzipIndexes=false" (overriding "/etc/apt/apt.conf.d/docker-gzip-indexes")
#   Could not open file /var/lib/apt/lists/partial/_tmp_tmp.ODWljpQfkE_._Packages - open (13: Permission denied)
#   ...
#   E: Failed to fetch store:/var/lib/apt/lists/partial/_tmp_tmp.ODWljpQfkE_._Packages  Could not open file /var/lib/apt/lists/partial/_tmp_tmp.ODWljpQfkE_._Packages - open (13: Permission denied)
apt-get -o Acquire::GzipIndexes=false update; \
;; \
esac; 
dpkgArch="$(dpkg --print-architecture)"; 
case "$dpkgArch" in amd64|i386|ppc64el) l.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; \
apt-get update; \
;; \
*) \
# we're on an architecture upstream doesn't officially build for
# let's build binaries from their published source packages
echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; \
\
tempDir="$(mktemp -d)"; \
cd "$tempDir"; \
\
savedAptMark="$(apt-mark showmanual)"; \
\
# build .deb files from upstream's source packages (which are verified by apt-get)
apt-get update; \
apt-get build-dep -y \
postgresql-common pgdg-keyring \
"postgresql-$PG_MAJOR=$PG_VERSION" \
; \
DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" \
apt-get source --compile \
postgresql-common pgdg-keyring \
"postgresql-$PG_MAJOR=$PG_VERSION" \
case "$dpkgArch" in amd64|i386|ppc64el) l.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; \
apt-get update; \
;; \
*) \
# we're on an architecture upstream doesn't officially build for
# let's build binaries from their published source packages
echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; \
\
tempDir="$(mktemp -d)"; \
cd "$tempDir"; \
\
savedAptMark="$(apt-mark showmanual)"; \
\
# build .deb files from upstream's source packages (which are verified by apt-get)
apt-get update; \
apt-get build-dep -y \
postgresql-common pgdg-keyring \
"postgresql-$PG_MAJOR=$PG_VERSION" \
; \
DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" \
apt-get source --compile \
postgresql-common pgdg-keyring \
"postgresql-$PG_MAJOR=$PG_VERSION" \
case "$dpkgArch" in amd64|i386|ppc64el) l.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; \
apt-get update; \
;; \
*) \
# we're on an architecture upstream doesn't officially build for
# let's build binaries from their published source packages
echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; \
\
tempDir="$(mktemp -d)"; \
cd "$tempDir"; \
\
savedAptMark="$(apt-mark showmanual)"; \
\
# build .deb files from upstream's source packages (which are verified by apt-get)
apt-get update; \
apt-get build-dep -y \
postgresql-common pgdg-keyring \
"postgresql-$PG_MAJOR=$PG_VERSION" \
; \
DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" \
apt-get source --compile \
postgresql-common pgdg-keyring \
"postgresql-$PG_MAJOR=$PG_VERSION"
case "$dpkgArch" in amd64|i386|ppc64el) # arches officialy built by upstream echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; apt-get update; ; *) # we're on an architecture upstream doesn't officially build for
# let's build binaries from their published source packages
echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list
tempDir="$(mktemp -d)"; cd "$tempDir";  savedAptMark="$(apt-mark showmanual)";  # build .deb files from upstream's source packages (which are verified by apt-get)
apt-get update
apt-get build-dep -y postgresql-common pgdg-keyring "postgresql-$PG_MAJOR=$PG_VERSION" 
DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" apt-get source --compile postgresql-common pgdg-keyring "postgresql-$PG_MAJOR=$PG_VERSION" case "$dpkgArch" in amd64|i386|ppc64el) # arches officialy built by upstream
sudo echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 
sudo apt-get update; ; *) # we're on an architecture upstream doesn't officially build for
# let's build binaries from their published source packages
sudo echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list
tempDir="$(mktemp -d)"; cd "$tempDir";  savedAptMark="$(apt-mark showmanual)";  # build .deb files from upstream's source packages (which are verified by apt-get)
sudo apt-get update && sudo apt-get build-dep -y postgresql-common pgdg-keyring "postgresql-$PG_MAJOR=$PG_VERSION" 
sudo apt-get build-dep -y postgresql-common pgdg-keyring "postgresql-$PG_MAJOR=$PG_VERSION" 
export DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)";
sudo apt-get source --compile postgresql-common pgdg-keyring "postgresql-$PG_MAJOR=$PG_VERSION" 
sudo apt source --compile postgresql-common pgdg-keyring "postgresql-$PG_MAJOR=$PG_VERSION" 
python
sudo subl /etc/apt/sources.list
sudo gedit /etc/apt/sources.list
sudo nano /etc/apt/sources.list
sudo subl /etc/share/pos
sudo subl /usr/share/postgresql/postgresql.conf.sample
sudo nano /usr/share/postgresql/postgresql.conf.sample
sudo subl
sublime-text
subl
sudo subl
sudo -H subl
sudo -i subl
gksudo -i subl
sudo apt install gksu
gksudo subl
sudo gksudo subl
gksudo subl
gksudo --help
gksudo -u usr subl
sudo chown chu:chu ~/.Xauthority
sudo chown usr:usr ~/.Xauthority
gksu synaptic
gksudo synaptic
touch /home/usr/.Xauthority
gksudo synaptic