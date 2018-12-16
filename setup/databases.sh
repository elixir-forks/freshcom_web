#!/bin/bash

set -eu

mix ecto.create -r Freshcom.Repo && \
mix ecto.migrate -r Freshcom.Repo && \
mix event_store.create -r Freshcom.Repo && \
mix event_store.init -r Freshcom.Repo
