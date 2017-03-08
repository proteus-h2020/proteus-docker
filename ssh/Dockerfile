FROM treelogic:base

MAINTAINER Pablo Mesa <pablo.mesa@treelogic.com>

## Install

RUN apk update && apk add --update --no-cache openssh

## SSH

USER root
RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key && ssh-keygen -q -N "" -t rsa -f /root/.ssh/id_rsa && cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
ADD ssh_config /etc/ssh/ssh_config  
ADD ssh_config /root/.ssh/config
RUN chmod 600 /root/.ssh/config && chown root:root /root/.ssh/config


## Supervisor

COPY supervisor-sshd.ini /etc/supervisor.d/
COPY sshd_config /etc/ssh

## Entrypoint

COPY entrypoint.sh entrypoint.sh
RUN chmod a+x entrypoint.sh


CMD ["/entrypoint.sh"]
