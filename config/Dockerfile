# Copyright 2017 Dubenskiy Sergey
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM ubuntu:17.10
# ensure local python is preferred over distribution python
ENV PATH /usr/local/bin:$PATH

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

# runtime dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
		dirmngr \
		ca-certificates \
		libexpat1 \
		libffi6 \
		libgdbm3 \
		libreadline7 \
		libreadline6 \
		libreadline6-dev \
		libsqlite3-0 \
		libssl-dev \
	&& rm -rf /var/lib/apt/lists/*

############################################################################################################
# Python 3
############################################################################################################

ENV GPG_KEY 0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
ENV PYTHON_VERSION 3.6.4

RUN set -ex \
	&& buildDeps=" \
		dpkg-dev \
		gcc \
		libbz2-dev \
		libc6-dev \
		libexpat1-dev \
		libffi-dev \
		libgdbm-dev \
		liblzma-dev \
		libncursesw5-dev \
		libreadline-dev \
		libsqlite3-dev \
		libssl-dev \
		make \
		tcl-dev \
		tk-dev \
		wget \
		xz-utils \
		zlib1g-dev \
		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') \
	" \
	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \
	\
	&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" \
	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" \
	&& export GNUPGHOME="$(mktemp -d)" \
	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" \
	&& gpg --batch --verify python.tar.xz.asc python.tar.xz \
	&& rm -rf "$GNUPGHOME" python.tar.xz.asc \
	&& mkdir -p /usr/src/python \
	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz \
	&& rm python.tar.xz \
	\
	&& cd /usr/src/python \
	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" \
	&& ./configure \
		--build="$gnuArch" \
		--enable-loadable-sqlite-extensions \
		--enable-shared \
		--with-system-expat \
		--with-system-ffi \
		--without-ensurepip \
	&& make -j "$(nproc)" \
	&& make install \
	&& ldconfig \
	\
	&& apt-get purge -y --auto-remove $buildDeps \
	\
	&& find /usr/local -depth \
		\( \
			\( -type d -a \( -name test -o -name tests \) \) \
			-o \
			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \
		\) -exec rm -rf '{}' + \
	&& rm -rf /usr/src/python

# make some useful symlinks that are expected to exist
RUN cd /usr/local/bin \
	&& ln -s idle3 idle \
	&& ln -s pydoc3 pydoc \
	&& ln -s python3 python \
	&& ln -s python3-config python-config

############################################################################################################
# Python PIP
#############################################################################################################


# if this is called "PIP_VERSION", pip explodes with "ValueError: invalid truth value '<VERSION>'"
ENV PYTHON_PIP_VERSION 9.0.1

RUN set -ex; \
	\
	apt-get update; \
	apt-get install -y --no-install-recommends wget; \
	rm -rf /var/lib/apt/lists/*; \
	\
	wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; \
	\
	apt-get purge -y --auto-remove wget; \
	\
	python get-pip.py \
		--disable-pip-version-check \
		--no-cache-dir \
		"pip==$PYTHON_PIP_VERSION" \
	; \
	pip --version; \
	\
	find /usr/local -depth \
		\( \
			\( -type d -a \( -name test -o -name tests \) \) \
			-o \
			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \
		\) -exec rm -rf '{}' +; \
	rm -f get-pip.py



RUN pip3 install --upgrade pip
RUN python3 -m pip install --upgrade pip setuptools wheel
COPY app/backend/requirements/shared.txt /home/app/requirements.txt
RUN pip3 install -r /home/app/requirements.txt

############################################################################################################
# Nginx
#############################################################################################################

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && apt-add-repository -y ppa:nginx/stable \
    && apt-get update \
    && apt-get install -y nginx \
    && rm -rf /var/lib/apt/lists/*

COPY config/nginx_production.conf /etc/nginx/nginx.conf
COPY app/frontend/public /www/data

RUN rm /etc/nginx/sites-enabled/default

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

############################################################################################################
# Misc
#############################################################################################################


RUN apt-get update \
	&& apt-get upgrade -y \
    && apt-get install -y git \
	python \
	python-dev \
	python-setuptools \
	python-pip \
	supervisor \
	gettext \
	mysql-client libmysqlclient-dev \
	libpq-dev \
	sqlite3 \
	awscli \
	gcc \
	pwgen \
	python-software-properties \
	software-properties-common 

RUN set -ex; \
	if ! command -v gpg > /dev/null; then \
		apt-get update; \
		apt-get install -y --no-install-recommends \
			gnupg \
			dirmngr \
		; \
		rm -rf /var/lib/apt/lists/*; \
	fi


############################################################################################################
# Postgres
############################################################################################################

USER root
# explicitly set user/group IDs
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres

ENV PG_MAJOR 9.6
ENV PG_VERSION 9.6.6-1.pgdg80+1
ENV POSTGRESQL_BIN=/usr/lib/postgresql/${PG_MAJOR}/bin/postgres
ENV POSTGRESQL_CONFIG_FILE=/etc/postgresql/${PG_MAJOR}/main/postgresql.conf
ENV POSTGRESQL_DATA=/var/lib/postgresql/${PG_MAJOR}/main

# grab gosu for easy step-down from root
ENV GOSU_VERSION 1.10
RUN set -x \
	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \
	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" \
	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" \
	&& export GNUPGHOME="$(mktemp -d)" \
	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \
	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \
	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc \
	&& chmod +x /usr/local/bin/gosu \
	&& gosu nobody true \
	&& apt-get purge -y --auto-remove ca-certificates wget


# make the "en_US.UTF-8" locale so postgres will be utf-8 enabled by default
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

RUN	echo 'deb http://ppa.launchpad.net/groonga/ppa/ubuntu artful main \n deb-src http://ppa.launchpad.net/groonga/ppa/ubuntu artful main' > /etc/apt/sources.list.d/groonga.list \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3359E7CECB64A157 \
	&& gpg --export "3359E7CECB64A157" > /etc/apt/trusted.gpg.d/postgres.gpg  \
	&& apt update \
    && apt install -y postgresql-9.6 \
    && update-rc.d -f postgresql disable 

RUN mkdir -p /var/run/postgresql/9.6-main.pg_stat_tmp
RUN chown postgres:postgres /var/run/postgresql/9.6-main.pg_stat_tmp
RUN touch /home/app/postgres.log && chown postgres:postgres /home/app/postgres.log

VOLUME  ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]
EXPOSE 5432

USER postgres
# Adjust PostgreSQL configuration so that remote connections to the
# database are possible
# And add ``listen_addresses`` to ``/etc/postgresql/9.3/main/postgresql.conf``
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.6/main/postgresql.conf
# RUN /usr/lib/postgresql/9.6/bin/pg_ctl -D /var/lib/postgresql/9.6/main -l /home/app/postgres.log start 
# CMD ["/usr/lib/postgresql/9.6/bin/postgres", "-D", "/var/lib/postgresql/9.6/main", "-c", "config_file=/etc/postgresql/9.6/main/postgresql.conf"]

# RUN ls /etc/postgresql
# RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.6/main/pg_hba.conf
# RUN cp /usr/share/postgresql/postgresql.conf.sample /etc/postgresql/9.6/main/postgresql.conf

# RUN $POSTGRESQL_BIN -D $POSTGRESQL_DATA -c config_file=$POSTGRESQL_CONFIG_FILE
RUN /etc/init.d/postgresql start &&\
    psql --command "CREATE USER docker WITH SUPERUSER PASSWORD 'docker';" &&\
    psql --command "CREATE USER django WITH ENCRYPTED PASSWORD 'oTuT1Fae';" &&\
    createdb -O docker docker

USER root

############################################################################################################
# Configs
############################################################################################################

COPY config/supervisor_production.conf /etc/supervisor/conf.d/
COPY config/.env /home/app/config/.env
COPY config/.pwd_text /home/app/config/.pwd_text
COPY config/gunicorn.conf /etc/gunicorn/conf.d/

############################################################################################################
# Scripts
############################################################################################################

COPY config/create_role.sh /home/app/config/create_role.sh
COPY config/random_passes.sh /home/app/config/random_passes.sh
COPY config/generate_init_django_sql.py /home/app/config/generate_init_django_sql.py
COPY config/start_django.sh /home/app/config/start_django.sh
COPY config/start_postgres.sh /home/app/config/start_postgres.sh
COPY config/init_db.sh /home/app/config/init_db.sh
COPY config/init_django.sql /docker-entrypoint-initdb.d/init_django.sql
COPY config/init_django.sql /home/app/config/init_django.sql


EXPOSE 80 8000 3306

COPY app/backend /home/app/backend

WORKDIR /home/app/backend
CMD bash /home/app/config/start_postgres.sh \
	&& bash /home/app/config/init_db.sh \
	&& python3 /home/app/backend/manage.py runserver 127.0.0.1:8080




# CMD ["supervisord", "-n"]
#
# Djnango
#

# CMD export DJANGO_SETTINGS_MODULE=ws.settings
# CMD python3 /home/app/backend/manage.py migrate
# CMD python3 /home/app/backend/manage.py makemigrations
# CMD python3 /home/app/backend/manage.py migrate
