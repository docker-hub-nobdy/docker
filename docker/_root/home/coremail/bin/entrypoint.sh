#!/bin/sh

echo "dockerd-entrypoint.sh ${DOCKER_OPTS} $@" > /tmp/exec_content

exec dockerd-entrypoint.sh ${DOCKER_OPTS} $@
