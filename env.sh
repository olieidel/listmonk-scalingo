#!/usr/bin/env bash

# Taken from
# https://github.com/Scalingo/sonarqube-buildpack/blob/2ebd02b45e710b3af43974bdd973b9d5faf0b3d0/opt/boot.sh

DB_HOSTNAME=$(echo $SCALINGO_POSTGRESQL_URL | cut -d "@" -f2 | cut -d ":" -f1)
DB_PORT=$(echo $SCALINGO_POSTGRESQL_URL | cut -d ":" -f4 | cut -d "/" -f 1)
DB_PASSWORD=$(echo $SCALINGO_POSTGRESQL_URL | cut -d "@" -f1 | cut -d ":" -f3)
DB_NAME=$(echo $SCALINGO_POSTGRESQL_URL | cut -d "?" -f 1 | cut -d "/" -f 4)
# On Scalingo, the database name and the user name are the same
DB_USERNAME=$DB_NAME

export LISTMONK_DB__HOST=$DB_HOSTNAME
export LISTMONK_DB__PORT=$DB_PORT
export LISTMONK_DB__USER=$DB_USERNAME
export LISTMONK_DB__PASSWORD=$DB_PASSWORD
export LISTMONK_DB__DATABASE=$DB_NAME
export LISTMONK_DB__SSL_MODE="require"

export LISTMONK_APP__ADDRESS="0.0.0.0:$PORT"
