# Treelogic Proteus Environment
# Tested on
# Kernel 3.13.0-32-generic - Ubuntu 14.04 - OK
# Kernel 3.13.0-92-generic - Ubuntu 12.02 - OK
# Kernel 4.2.0-27-generic - Ubuntu 14.04 - OK
# Kernel 4.2.0-27-generic - Ubuntu 16.04 - OK

### Proteus Network

NETWORK=proteus

if [ "$(sudo docker network inspect $NETWORK -d --format '{{ .Name }}')" == "$NETWORK" ]; then
        echo "Existe la red: $NETWORK"
else echo "Proteus Network don´t exist. Creating...  "$(sudo docker network create proteus)
fi

### Build
sudo docker-compose build


### Apache Hadoop

sudo docker-compose up -d namenode
sleep 1m
### Leave Safe Mode
sudo ./scripts/leave-safemode.sh

sudo docker-compose up -d datanode1
sudo docker-compose up -d resourcemanager
sudo docker-compose up -d datanode2
sudo docker-compose up -d datanode3
sudo docker-compose up -d nodemanager1
sudo docker-compose up -d nodemanager2
sudo docker-compose up -d nodemanager3
sudo docker-compose up -d historyserver

### Apache Hive
sudo docker-compose up -d hive-metastore-postgresql
sleep 1m
sudo docker-compose up -d hive-metastore
sudo docker-compose up -d hive-server

### Upload files on HDFS
sudo ./scripts/hdfs.sh

### Load data on  Apache Hive
sudo ./scripts/setup-hive.sh
