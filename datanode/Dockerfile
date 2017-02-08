FROM treelogic:ssh

MAINTAINER Pablo Mesa <pablo.mesa@treelogic.com>

RUN echo "root:root" | chpasswd
USER root

# Java 8

RUN apk update
RUN apk add --update --no-cache openjdk8 perl
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/
RUN echo 'alias jps='/usr/lib/jvm/java-1.8-openjdk/bin/jps'' >> ~/.bashrc

# Hadoop

RUN wget http://apache.uvigo.es/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz && tar -zxvf hadoop-2.7.3.tar.gz && rm -r hadoop-2.7.3.tar.gz && /hadoop-2.7.3/bin/hdfs namenode -format proteus-cluster

# Supervisor

COPY supervisor-datanode.ini /etc/supervisor.d/
COPY hadoop-env.sh /hadoop-2.7.3/etc/hadoop/hadoop-env.sh 

# Entrypoint

COPY entrypoint.sh entrypoint.sh
RUN chmod a+x entrypoint.sh

CMD ["/entrypoint.sh"]
