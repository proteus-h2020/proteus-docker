FROM alpine:latest

MAINTAINER Pablo Mesa <pablo.mesa@treelogic.com>

## Install

RUN apk update && apk add --update --no-cache bash wget supervisor

## Supervisor

COPY supervisord.conf /etc/supervisord.conf
COPY supervisor.ini /etc/supervisor.d/
RUN mkdir /var/log/supervisor

## Entrypoint

COPY entrypoint.sh entrypoint.sh
RUN chmod a+x entrypoint.sh

## Workdir

WORKDIR /opt

CMD ["/entrypoint.sh"]
