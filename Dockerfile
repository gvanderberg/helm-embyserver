ARG ARCH=amd64
ARG TAG=latest

FROM ubuntu:${TAG}
EXPOSE 8096
COPY ["emby-server-deb_4.6.7.0_amd64.deb", "/tmp"]

RUN apt-get update \
  && apt-get upgrade -y \
  && dpkg --unpack /tmp/emby-server-deb_4.6.7.0_amd64.deb \
  && mv /var/lib/dpkg/info/emby-server.postinst /tmp/ \
  && dpkg --configure emby-server \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/opt/emby-server/bin/emby-server" ]