FROM treelogic:ssh

MAINTAINER <pablo.mesa@treelogic.com>

RUN echo "root:root" | chpasswd
USER root

# JAVA 8

RUN apk update
RUN apk add --update --no-cache openjdk8 perl
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/
RUN echo 'alias jps='/usr/lib/jvm/java-1.8-openjdk/bin/jps'' >> ~/.bashrc

# SUPERVISOR
COPY supervisor-kafka.ini /etc/supervisor.d/

# KAFKA

RUN wget http://apache.uvigo.es/kafka/0.10.0.0/kafka_2.11-0.10.0.0.tgz
RUN tar -zxvf kafka_2.11-0.10.0.0.tgz
ENV KAFKA_HOME=/kafka_2.11-0.10.0.0.tgz/
COPY server.properties /kafka_2.11-0.10.0.0/config/server.properties

# ENTRYPOINT

COPY entrypoint.sh entrypoint.sh
RUN chmod a+x entrypoint.sh

CMD ["/entrypoint.sh"]

 
