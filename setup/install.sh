#!/bin/bash

set -eu

FRESHCOM_DIR="${PWD}/../freshcom"

if [ ! -d "${FRESHCOM_DIR}" ]
    then
        mkdir -p "${FRESHCOM_DIR}" && \
        git clone https://github.com/freshcom/freshcom.git "${FRESHCOM_DIR}" && \
        mix deps.get && \
        mix compile
    else
        printf "\n\n---> FRESHCOM BACKEND IS ALREADY INSTALLED... SKIPPING <---\n\n"
fi
