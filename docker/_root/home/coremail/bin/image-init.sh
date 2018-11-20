#!/bin/sh

sed -i 'N3aecho "1. $@" >> /patch_result' /usr/local/bin/dockerd-entrypoint.sh

sed -i -r 's/^([\t ]*)("\$@"[\t ]*)$/\1${DOCKER_OPTS} \2/' /usr/local/bin/dockerd-entrypoint.sh

sed -i 'N14aecho "2. $@" >> /patch_result' /usr/local/bin/dockerd-entrypoint.sh

sed -i 'N24aecho "3. $@" >> /patch_result' /usr/local/bin/dockerd-entrypoint.sh

sed -i 'N24aecho "DOCKER_HOST: ${DOCKER_HOST}" >> /patch_result' /usr/local/bin/dockerd-entrypoint.sh


echo "/usr/local/bin/dockerd-entrypoint.sh patched" >> /patch_result
