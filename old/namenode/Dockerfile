FROM bde2020/hadoop-base:1.0.0
MAINTAINER David Piris <david.piris@treelogic.com>
MAINTAINER Pablo Mesa <pablo.mesa@treelogic.com>

ENV HDFS_CONF_dfs_namenode_name_dir=file:///hadoop/dfs/name
RUN mkdir -p /hadoop/dfs/name
VOLUME /hadoop/dfs/name

ADD run.sh /run.sh
RUN chmod a+x /run.sh

RUN hdfs dfs -mkdir -p /user/proteus-data
RUN hdfs dfs -mkdir -p /user/proteus-user
RUN hdfs dfs -mkdir -p /user/proteus-copy

RUN hdfs dfs -put /hadoop-data/proteus-example.csv /user/proteus/proteus-example.csv
RUN hdfs dfs -put /hadoop-data/proteus-example2.csv /user/proteus/proteus-exapmle2.csv
RUN hdfs dfs -put /hadoop-data/proteus-example3.csv /user/proteus/proteus-example3.csv

#Abrimos puertos
EXPOSE 8088
EXPOSE 8080
EXPOSE 50030
EXPOSE 54311

CMD ["/run.sh"]
