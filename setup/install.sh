#!/bin/bash

set -eu

FRESHCOM_DIR="${PWD}/../freshcom"
mkdir -p "${FRESHCOM_DIR}"

git clone https://github.com/freshcom/freshcom.git "${FRESHCOM_DIR}" && \
mix deps.get && \
mix compile
