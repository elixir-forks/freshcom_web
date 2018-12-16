#!/bin/bash

set -eu

if [ ! -f .env ]
    then
        cp -v .env.example .env

        printf "\n---> PLEASE CONFIGURE THE DATABASE CREDENTIALS IN: \n\t freshcom_web/.env \n\n"

        exit 1
fi

source .env

source ./setup/install.sh && \
source ./setup/databases.sh
