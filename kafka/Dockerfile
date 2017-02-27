FROM treelogic:ssh

MAINTAINER <pablo.mesa@treelogic.com>

RUN echo "root:root" | chpasswd
USER root

## Environment

ENV JAVA_VERSION=1.8
ENV JAVA_HOME=/usr/lib/jvm/java-$JAVA_VERSION-openjdk/
ENV KAFKA_VERSION=0.10.0.0
ENV KAFKA_HOME=/opt/kafka
ENV SCALA_VERSION=2.11

## Install
# Java 8

RUN apk update && apk add --update --no-cache openjdk8 perl

# Kafka

RUN mkdir -p /opt/kafka && wget http://apache.uvigo.es/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz && tar -zxvf kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz --strip 1 -C /opt/kafka/ && rm -r /opt/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz && mkdir -p /var/log/kafka/topic/ && mkdir -p /var/log/kafka/producer/

COPY server.properties /opt/kafka/config/server.properties

## Alias

RUN echo 'alias jps='/usr/lib/jvm/java-$JAVA_VERSION-openjdk/bin/jps'' >> ~/.bashrc && echo 'proteus(){ /opt/kafka/bin/kafka-console-consumer.sh --zookeeper zookeeper:2181 --topic proteus --from-beginning;}' >> /root/.bashrc && source /root/.bashrc

## Supervisor

COPY supervisor-kafka.ini /etc/supervisor.d/

## Entrypoint

COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod a+x /opt/entrypoint.sh

## Workdir

WORKDIR /opt

CMD ["/opt/entrypoint.sh"] 
