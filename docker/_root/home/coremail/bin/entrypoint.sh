#!/bin/sh

echo "dockerd-entrypoint.sh ${DOCKER_OPTS} $@"

exec dockerd-entrypoint.sh ${DOCKER_OPTS} $@
