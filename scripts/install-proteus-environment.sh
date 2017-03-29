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

## Build Images
echo "Build"

sudo docker build -t treelogic:base ./base/.
sudo docker build -t treelogic:ssh ./ssh/.
sudo docker build -t treelogic:namenode ./namenode/.
sudo docker build -t treelogic:resourcemanager ./resourcemanager/.
sudo docker build -t treelogic:nodemanager ./nodemanager/.
sudo docker build -t treelogic:datanode ./datanode/.
sudo docker build -t treelogic:zookeeper ./zookeeper/.
sudo docker build -t treelogic:kafka ./kafka/.


echo "Docker Compose"

### Build

sudo docker-compose scale nodemanager=3
sudo docker-compose scale datanode=3
sudo docker-compose up -d resourcemanager
sudo docker-compose up -d namenode
sudo docker-compose up -d zookeeper
sudo docker-compose up -d kafka
