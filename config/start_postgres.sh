#!/bin/bash


set -o allexport
source /home/app/config/.pwd_text
set +o allexport


PG_MAJOR=9.6
POSTGRESQL_BIN=/usr/lib/postgresql/${PG_MAJOR}/bin/postgres
POSTGRESQL_CONFIG_FILE=/etc/postgresql/${PG_MAJOR}/main/postgresql.conf
POSTGRESQL_DATA=/var/lib/postgresql/${PG_MAJOR}/main

if [ ! -d "$POSTGRESQL_DATA" ]; then
	echo "${PW_POSTGRES}" > /var/lib/postgresql/pwfile

	su -c "/usr/lib/postgresql/${PG_MAJOR}/bin/initdb \
	--pgdata=/var/lib/postgresql/${PG_MAJOR}/main --pwfile=/var/lib/postgresql/pwfile \
	--username=postgres --encoding=unicode --auth=trust >/dev/null" -s /bin/sh postgres

	echo "========================================================================"
	echo " postgres password is ${PW_POSTGRES}"
	echo "========================================================================"

fi

su -c "$POSTGRESQL_BIN -D $POSTGRESQL_DATA -c config_file=$POSTGRESQL_CONFIG_FILE" -s /bin/sh postgres