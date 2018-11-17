FROM docker:stable-dind
MAINTAINER Simon <shuang@coremail.cn>
COPY _root /

RUN sh /home/coremail/bin/image-init.sh

ENTRYPOINT ["dockerd-entrypoint.sh"]
