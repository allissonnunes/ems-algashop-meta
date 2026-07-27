#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE DATABASE ordering;
	CREATE DATABASE ordering_test;
	CREATE DATABASE billing;
	CREATE DATABASE billing_test;
	CREATE DATABASE fastpay;
	CREATE DATABASE authorization_server;
	CREATE DATABASE authorization_server_test;
EOSQL
