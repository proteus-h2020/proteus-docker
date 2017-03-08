CONTAINER="zookeeper"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "ZooKeeper [ RUNNING ]"
else
        echo "ZooKeeper [ STOPPED ]"
fi

CONTAINER="kafka"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "Kafka [ RUNNING ]"
else
        echo "Kafka [ STOPPED ]"
fi
