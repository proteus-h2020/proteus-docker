CONTAINER="zookeeper"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f zookeeper
        echo "ZooKeeper deleted"
else    echo ""
fi

CONTAINER="kafka"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f kafka
        echo "Kafka deleted"
else    echo ""
fi


