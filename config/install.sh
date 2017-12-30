
export ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
export ENV PYTHON_VERSION=3.6.4

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
sudo apt-get install -y $buildDeps --no-install-recommends
sudo rm -rf /var/lib/apt/lists/* 

sudo wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 
sudo wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 
sudo export GNUPGHOME="$(mktemp -d)" 
sudo gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 
sudo gpg --batch --verify python.tar.xz.asc python.tar.xz 
sudo rm -rf "$GNUPGHOME" python.tar.xz.asc 
sudo mkdir -p /usr/src/python 
sudo tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 
sudo rm python.tar.xz 

cd /usr/src/python 
gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 
sudo ./configure --build="$gnuArch" --enable-loadable-sqlite-extensions --enable-shared --with-system-expat --with-system-ffi --without-ensurepip 
sudo make -j "$(nproc)" 
sudo make install 
sudo ldconfig 

sudo apt-get purge -y --auto-remove $buildDeps


cd /usr/local/bin
sudo ln -s idle3 idle
sudo ln -s pydoc3 pydoc
sudo ln -s python3 python
sudo ln -s python3-config python-config

export PYTHON_PIP_VERSION 9.0.1
export LD_LIBRARY_PATH=/usr/local/lib
# export LD_LIBRARY_PATH=/usr/lib/

key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'
export GNUPGHOME="$(mktemp -d)"; \
sudo gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"
sudo gpg -a --export "$key" | sudo apt-key add -
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
sudo m -rf "$GNUPGHOME"
sudo apt-key list

set -ex; apt-get update
wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'
python3 get-pip.py --disable-pip-version-check --no-cache-dir "pip==$PYTHON_PIP_VERSION" ; pip --version
sudo find /usr/local -depth \( \( -type d -a \( -name test -o -name tests \) \) -o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \) -exec rm -rf '{}' +;
rm -f get-pip.py
sudo apt-get install -y software-properties-common 
sudo apt-add-repository -y ppa:nginx/stable 
sudo apt-get update 
sudo apt-get install -y nginx 
sudo rm -rf /var/lib/apt/lists/*
sudo ln -sf /dev/stdout /var/log/nginx/access.log
sudo ln -sf /dev/stderr /var/log/nginx/error.log

sudo apt-get install -y git python python-dev python-setuptools python-pip supervisor gettext mysql-client libmysqlclient-dev libpq-dev sqlite3 awscli gcc pwgen python-software-properties software-properties-common  gnuph dimngr
export GOSU_VERSION=1.10
sudo apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 
sudo wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 
sudo wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 
export GNUPGHOME="$(mktemp -d)" 
sudo gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 
sudo gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 
sudo rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 
sudo chmod +x /usr/local/bin/gosu 
sudo gosu nobody true 

export PG_MAJOR=9.6
export PG_VERSION=9.6.20-1.pgdg80+1

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

tempDir="$(mktemp -d)"; cd "$tempDir";  savedAptMark="$(apt-mark showmanual)";  # build .deb files from upstream's source packages (which are verified by apt-get)
sudo apt-get update && sudo apt-get build-dep -y postgresql-common pgdg-keyring "postgresql-$PG_MAJOR=$PG_VERSION" 
export DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)";
sudo apt-get source --compile postgresql-common pgdg-keyring "postgresql-$PG_MAJOR=$PG_VERSION" 

sudo apt-mark showmanual | xargs apt-mark auto > /dev/null
sudo apt-mark manual $savedAptMark

ls -lAFh;
sudo dpkg-scanpackages . > Packages;
sudo  grep '^Package: ' Packages;
sudo echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list;


sudo mkdir -p "$PGDATA" && sudo chown -R postgres:postgres "$PGDATA" && sudo chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)


easy_install pyzmq
