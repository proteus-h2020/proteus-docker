CONTAINER="zookeeper"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop zookeeper
        echo "ZooKeeper stopped"
else 	echo ""
fi

CONTAINER="kafka"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop kafka
        echo "Kafka stopped"
else	echo ""
fi

