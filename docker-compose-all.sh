#!/bin/env bash

COMMAND=$*

if [ -e "$COMMAND" ]; then
  echo Error: no command specified
  exit 1
fi

COMPOSE_FILE_LIST=$(find . -name "docker-compose.yml" | sort)

for COMPOSE_FILE in $COMPOSE_FILE_LIST; do

  COMPOSE_DIRECTORY="$(dirname $COMPOSE_FILE)"

  (cd "$COMPOSE_DIRECTORY" && \
    docker compose $COMMAND)

  [[ $? -gt 0 ]] && exit $?

done
