FROM treelogic:ssh

MAINTAINER Pablo Mesa <pablo.mesa@treelogic.com>

RUN echo "root:root" | chpasswd
USER root

## Environment

ENV JAVA_VERSION=1.8
ENV JAVA_HOME=/usr/lib/jvm/java-$JAVA_VERSION-openjdk/
ENV HADOOP_VERSION=2.7.3

## Install

# Java 8

RUN apk update && apk add --update --no-cache openjdk8 perl

# Hadoop

RUN mkdir -p /opt/hadoop && wget http://apache.uvigo.es/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz && tar -zxvf hadoop-$HADOOP_VERSION.tar.gz --strip 1 -C /opt/hadoop && rm -r hadoop-$HADOOP_VERSION.tar.gz && /opt/hadoop/bin/hdfs namenode -format proteus-cluster

# Supervisor

COPY supervisor-resourcemanager.ini /etc/supervisor.d/
COPY hadoop-env.sh /hadoop-$HADOOP_VERSION/etc/hadoop/hadoop-env.sh 

## Alias

RUN echo 'alias jps='/usr/lib/jvm/java-$JAVA_VERSION-openjdk/bin/jps'' >> ~/.bashrc

# Entrypoint

COPY entrypoint.sh entrypoint.sh
RUN chmod a+x entrypoint.sh

## Workidr

WORKDIR /opt

CMD ["/entrypoint.sh"]
