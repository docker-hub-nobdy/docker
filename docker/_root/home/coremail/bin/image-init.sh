#!/bin/sh


sed -i -r 's/^([\t ]*)("\$@"[\t ]*)$/\1${DOCKER_OPTS} \2/' /usr/local/bin/dockerd-entrypoint.sh

sed -i 'N22aecho "$@" >> /patch_result' /usr/local/bin/dockerd-entrypoint.sh

echo "/usr/local/bin/dockerd-entrypoint.sh patched" >> /patch_result
