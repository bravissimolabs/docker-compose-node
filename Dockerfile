FROM node:9.10.1

COPY getDocker.sh /var/lib/getDocker.sh
RUN sh /var/lib/getDocker.sh

RUN apt-get update && apt-get install -y -qq openssh-server

RUN curl -sSL https://github.com/docker/compose/releases/download/1.21.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
