FROM alpine:latest

MAINTAINER Pablo Mesa <pablo.mesa@treelogic.com>

RUN echo "root:root" | chpasswd
USER root

RUN apk update
RUN apk add --update --no-cache bash wget supervisor


COPY entrypoint.sh entrypoint.sh
RUN chmod a+x entrypoint.sh

COPY supervisord.conf /etc/supervisord.conf
COPY supervisor.ini /etc/supervisor.d/
RUN mkdir /var/log/supervisor

CMD ["/entrypoint.sh"]
