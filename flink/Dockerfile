FROM treelogic:ssh

MAINTAINER <pablo.mesa@treelogic.com>

## Environment

ENV JAVA_VERSION=1.8
ENV JAVA_HOME=/usr/lib/jvm/java-$JAVA_VERSION-openjdk/
ENV KAFKA_VERSION=0.10.0.0
ENV KAFKA_HOME=/opt/kafka
ENV SCALA_VERSION=2.11
ENV MAVEN_VERSION=3.3.9
ENV M2_HOME=/usr/lib/mvn/
ENV M2=$M2_HOME/bin
ENV PATH $PATH:$M2_HOME:$M2


## Install
# Java 8

RUN apk update && apk add --update --no-cache openjdk8 perl git

# Maven

RUN wget http://ftp.cixug.es/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && tar -zxvf apache-maven-$MAVEN_VERSION-bin.tar.gz && rm -r apache-maven-$MAVEN_VERSION-bin.tar.gz && mv apache-maven-$MAVEN_VERSION /usr/lib/mvn

# Flink 

RUN mkdir -p /opt/flink && cd /opt/flink && git clone https://github.com/proteus-h2020/proteus-engine -b proteus-dev && cd proteus-engine && mvn clean install -DskipTests -Dcheckstyle.skip && cd flink-dist && mvn clean install

# SOLMA

RUN mkdir -p /opt/SOLMA && cd /opt/SOLMA/ && git clone https://github.com/proteus-h2020/SOLMA.git -b develop && cd /opt/SOLMA/SOLMA && mvn clean install

# Flink Setup

COPY flink-conf.yaml /opt/flink/proteus-engine/build-target/conf/flink-conf.yaml 
# PROTEUS JOBS

# Mean/Variance

RUN mkdir -p /opt/proteus-jobs && cd /opt/proteus-jobs/ && git clone https://github.com/proteus-h2020/proteus-job.git -b development && cd /opt/proteus-jobs/proteus-job/ && mvn clean install -DskipTests

# SAX

## Alias

RUN echo 'alias jps='/usr/lib/jvm/java-$JAVA_VERSION-openjdk/bin/jps'' >> ~/.bashrc && echo 'proteus(){ /opt/kafka/bin/kafka-console-consumer.sh --zookeeper zookeeper:2181 --topic proteus --from-beginning;}' >> /root/.bashrc && source /root/.bashrc && echo 'date +%Y-%m-%d:%H:%M:%S' >> /usr/local/bin/timestamp && chmod a+x /usr/local/bin/timestamp


## Supervisor

COPY supervisor-flink.ini /etc/supervisor.d/

## Maven Build



## Entrypoint

COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod a+x /opt/entrypoint.sh


## Workdir

WORKDIR /opt

CMD ["/opt/entrypoint.sh"] 
