CONTAINER="namenode"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
	sudo docker rm -f namenode
	echo "NameNode deleted"
else 	echo ""
fi

CONTAINER="resourcemanager"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f resourcemanager
        echo "ResourceManager deleted"
else    echo ""
fi


CONTAINER="datanode1"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f datanode1
	echo "DataNode1 deleted"
else    echo ""
fi

CONTAINER="datanode2"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f datanode2
        echo "DataNode2 deleted"
else    echo ""
fi

CONTAINER="datanode3"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f datanode3
        echo "DataNode3 deleted"
else    echo ""
fi

CONTAINER="nodemanager1"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f nodemanager1
        echo "Node Manager 1 deleted"
else    echo ""
fi

CONTAINER="nodemanager2"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f nodemanager2
        echo "Node Manager 2 deleted"
else    echo ""
fi

CONTAINER="nodemanager3"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f nodemanager3
        echo "Node Manager 3 deleted"
else    echo ""
fi

CONTAINER="historyserver"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f historyserver
        echo "History Server deleted"
else    echo ""
fi


CONTAINER="hive-metastore"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f hive-metastore
        echo "Hive Metastore deleted"
else    echo ""
fi

CONTAINER="hive-metastore-postgresql"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f hive-metastore-postgresql
        echo "Hive Metastore PostgreSQL deleted"
else    echo ""
fi

CONTAINER="hive-server"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f hive-server
        echo "Hive Server deleted"
else    echo ""
fi

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

CONTAINER="tez"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "false" ]; then
        sudo docker rm -f tez
        echo "Tez deleted"
else    echo ""
fi

