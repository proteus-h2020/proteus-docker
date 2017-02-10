FROM treelogic:ssh

MAINTAINER Pablo Mesa <pablo.mesa@treelogic.com>

RUN echo "root:root" | chpasswd
USER root

## Environment

ENV JAVA_VERSION=1.8
ENV HADOOP_VERSION=2.7.3

# Java 8

RUN apk update
RUN apk add --update --no-cache openjdk8 perl
ENV JAVA_HOME=/usr/lib/jvm/java-$JAVA_VERSION-openjdk/
RUN echo 'alias jps='/usr/lib/jvm/java-$JAVA_VERSION-openjdk/bin/jps'' >> ~/.bashrc

# Hadoop

RUN wget http://apache.uvigo.es/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz && tar -zxvf hadoop-$HADOOP_VERSION.tar.gz && rm -r hadoop-$HADOOP_VERSION.tar.gz && /hadoop-$HADOOP_VERSION/bin/hdfs namenode -format proteus-cluster

# Supervisor

COPY supervisor-datanode.ini /etc/supervisor.d/
COPY hadoop-env.sh /hadoop-$HADOOP_VERSION/etc/hadoop/hadoop-env.sh 

# Entrypoint

COPY entrypoint.sh entrypoint.sh
RUN chmod a+x entrypoint.sh

CMD ["/entrypoint.sh"]
