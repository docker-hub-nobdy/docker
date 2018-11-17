#!/bin/sh


mkdir -p /etc/docker

cat >> /etc/docker/daemon.json <<_DEF
{
  "insecure-registries": ["http://registry.192.168.200.30.nip.io"]
}
_DEF

