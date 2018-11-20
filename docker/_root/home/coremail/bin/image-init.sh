#!/bin/sh

sed -i '3iecho "1. $@" >> /patch_result' /usr/local/bin/dockerd-entrypoint.sh

sed -i -r 's/^([\t ]*)("\$@"[\t ]*)$/\1${DOCKER_OPTS} \2/' /usr/local/bin/dockerd-entrypoint.sh

sed -i '14iecho "2. $@" >> /patch_result' /usr/local/bin/dockerd-entrypoint.sh

sed -i '24iecho "3. $@" >> /patch_result' /usr/local/bin/dockerd-entrypoint.sh

sed -i '24iecho "DOCKER_HOST: ${DOCKER_HOST}" >> /patch_result' /usr/local/bin/dockerd-entrypoint.sh


echo "/usr/local/bin/dockerd-entrypoint.sh patched" >> /patch_result
