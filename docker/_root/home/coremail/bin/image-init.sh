#!/bin/sh


sed -i -r 's/^( *)("\$@" *)$/\1${DOCKER_OPTS} \2/' /usr/local/bin/dockerd-entrypoint.sh

echo "/usr/local/bin/dockerd-entrypoint.sh patched" >> /patch_result

