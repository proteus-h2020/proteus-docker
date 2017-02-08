FROM treelogic:ssh

MAINTAINER <pablo.mesa@treelogic.com>

# JAVA 8

RUN apk update
RUN apk add --update --no-cache openjdk8 perl
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/
RUN echo 'alias jps='/usr/lib/jvm/java-1.8-openjdk/bin/jps'' >> ~/.bashrc

# Supervisor

COPY supervisor-zookeeper.ini /etc/supervisor.d/

# ZOOKEEPER

ENV ZOOKEEPER_VERSION=3.4.9

RUN wget -q http://mirror.vorboss.net/apache/zookeeper/zookeeper-3.4.9/zookeeper-3.4.9.tar.gz

#Install
RUN mkdir opt && tar -xzf zookeeper-${ZOOKEEPER_VERSION}.tar.gz -C /opt

#Configure
RUN mv /opt/zookeeper-${ZOOKEEPER_VERSION}/conf/zoo_sample.cfg /opt/zookeeper-${ZOOKEEPER_VERSION}/conf/zoo.cfg

ENV ZK_HOME /opt/zookeeper-${ZOOKEEPER_VERSION}
RUN sed  -i "s|/tmp/zookeeper|$ZK_HOME/data|g" $ZK_HOME/conf/zoo.cfg; mkdir $ZK_HOME/data

COPY start-zk.sh /usr/bin/start-zk.sh 
RUN chmod a+x /usr/bin/start-zk.sh
EXPOSE 2181 2888 3888

RUN find / -name "start-zk.sh"


CMD ["/usr/bin/start-zk.sh"]
