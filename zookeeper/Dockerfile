FROM treelogic:ssh

MAINTAINER <pablo.mesa@treelogic.com>

## Environment

ENV JAVA_VERSION=1.8
ENV JAVA_HOME=/usr/lib/jvm/java-$JAVA_VERSION-openjdk
ENV ZOOKEEPER_VERSION=3.4.9
ENV ZOOKEEPER_HOME=/opt/zookeeper

## Install

# Java 8

RUN apk update && apk add --update --no-cache openjdk8 perl

# Supervisor

COPY supervisor-zookeeper.ini /etc/supervisor.d/

# Zookeeper

RUN mkdir -p /opt/zookeeper && wget -q http://mirror.vorboss.net/apache/zookeeper/zookeeper-$ZOOKEEPER_VERSION/zookeeper-$ZOOKEEPER_VERSION.tar.gz && tar -zxf zookeeper-$ZOOKEEPER_VERSION.tar.gz --strip 1 -C /opt/zookeeper && mv /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg && sed  -i "s|/tmp/zookeeper|$ZOOKEEPER_HOME/data|g" $ZOOKEEPER_HOME/conf/zoo.cfg; mkdir $ZOOKEEPER_HOME/data

# Configuration

COPY start-zk.sh /opt/zookeeper/start-zk.sh 
RUN chmod a+x /opt/zookeeper/start-zk.sh

## Alias

RUN echo 'alias jps='/usr/lib/jvm/java-$JAVA_VERSION-openjdk/bin/jps'' >> ~/.bashrc

## Ports

EXPOSE 2181 2888 3888

CMD ["/usr/bin/supervisord"]
