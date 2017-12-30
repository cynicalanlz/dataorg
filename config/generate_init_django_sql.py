#!/usr/bin/env python

import os
import subprocess

with open(".pwd_text", 'r') as f:
    pwd = {}
    for line in f:
        spl = line.strip().split('=')
        pwd[spl[0]] = spl[1]

# sql_text = """DROP DATABASE IF EXISTS dataorg_django; 
# CREATE DATABASE dataorg_django;
# DROP USER IF EXISTS django;
# CREATE USER django WITH PASSWORD '{}';
# GRANT ALL PRIVILEGES ON DATABASE dataorg_django TO django;
# """.format(pwd['PW_DJANGO_DB'])


sql_text = """CREATE DATABASE dataorg_django;
CREATE USER django WITH PASSWORD '{}';
GRANT ALL PRIVILEGES ON DATABASE dataorg_django TO django;
""".format(pwd['PW_DJANGO_DB'])

with open("init_django.sql", 'w') as f:
	f.write(sql_text)