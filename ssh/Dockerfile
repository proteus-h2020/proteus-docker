FROM treelogic:base

MAINTAINER Pablo Mesa <pablo.mesa@treelogic.com>

RUN echo "root:root" | chpasswd
USER root

RUN apk update
RUN apk add --update --no-cache openssh

COPY entrypoint.sh entrypoint.sh
RUN chmod a+x entrypoint.sh

COPY supervisor-sshd.ini /etc/supervisor.d/
COPY sshd_config /etc/ssh

#SSH 
USER root
RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -q -N "" -t rsa -f /root/.ssh/id_rsa
RUN cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
ADD ssh_config /etc/ssh/ssh_config
ADD ssh_config /root/.ssh/config
RUN chmod 600 /root/.ssh/config
RUN chown root:root /root/.ssh/config

CMD ["/entrypoint.sh"]
