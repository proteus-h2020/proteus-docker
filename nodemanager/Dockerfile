FROM treelogic:ssh

MAINTAINER Pablo Mesa <pablo.mesa@treelogic.com>

RUN echo "root:root" | chpasswd
USER root

## Environment

ENV JAVA_VERSION=1.8
ENV HADOOP_VERSION=2.7.3
ENV JAVA_HOME=/usr/lib/jvm/java-$JAVA_VERSION-openjdk/


# Java 8

RUN apk update && apk add --update --no-cache openjdk8 perl

# Hadoop

RUN mkdir -p /opt/hadoop && wget http://apache.uvigo.es/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz && tar -zxvf hadoop-$HADOOP_VERSION.tar.gz --strip 1 -C /opt/hadoop && rm -r hadoop-$HADOOP_VERSION.tar.gz && /opt/hadoop/bin/hdfs namenode -format proteus-cluster

RUN cp /opt/hadoop/etc/hadoop/mapred-site.xml.template /opt/hadoop/etc/hadoop/mapred-site.xml

# Supervisor

COPY supervisor-nodemanager.ini /etc/supervisor.d/
COPY hadoop-env.sh /opt/hadoop/etc/hadoop/hadoop-env.sh 

## Alias

RUN echo 'alias jps='/usr/lib/jvm/java-$JAVA_VERSIOn-openjdk/bin/jps'' >> ~/.bashrc

# Entrypoint

COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod a+x /opt/entrypoint.sh

## Workdir

WORKDIR /opt/

CMD ["/opt/entrypoint.sh"]
