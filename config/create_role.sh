#!/bin/bash
set -e
pg_createcluster 9.6 main --start
psql -h 127.0.0.1 -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE ROLE read_only;
EOSQL