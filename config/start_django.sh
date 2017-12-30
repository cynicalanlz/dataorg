#!/bin/bash

function postgres_ready(){
python << END
import sys
import psycopg2

with open("/home/app/config/.pwd_text", 'r') as f:
    pwd = {}
    for line in f:
        spl = line.strip().split('=')
        pwd[spl[0]] = spl[1]
try:
    conn = psycopg2.connect(dbname="dataorg_django", user="django", password=pwd['PW_DJANGO_DB'], host="127.0.0.1")
except psycopg2.OperationalError:
    sys.exit(-1)
sys.exit(0)
END
}

until postgres_ready; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

python3 /home/app/backend/manage.py runserver
