FROM docker:stable-dind
MAINTAINER Simon <shuang@coremail.cn>
COPY _root /

RUN sh /home/coremail/bin/image-init.sh

ENTRYPOINT ["/bin/sh", "/home/coremail/bin/entrypoint.sh"]
