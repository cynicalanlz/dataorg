#!/bin/bash

set -o allexport
source /home/app/config/.pwd_text
source /home/app/config/.env
set +o allexport

set -e

echo 'Creating django db'

su -c "psql -a -f /home/app/config/init_django.sql" -s /bin/sh postgres