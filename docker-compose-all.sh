#!/bin/env bash

if [ -z "$*" ]; then
  echo Error: no command specified
  exit 1
fi

find "$(pwd)" -name "docker-compose.yml" -printf '%h\n' | \
  sort | \
  xargs --no-run-if-empty --replace=COMPOSE_DIRECTORY sh -c 'cd "$0" && docker compose "$@"' COMPOSE_DIRECTORY "$@"
