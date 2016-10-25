CONTAINER="namenode"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
	sudo docker stop namenode
	echo "NameNode stopped"
else 	echo ""
fi

CONTAINER="resourcemanager"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop resourcemanager
        echo "ResourceManager stopped"
else 	echo ""
fi


CONTAINER="datanode1"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop datanode1
	echo "DataNode1 stopped"
else 	echo ""
fi

CONTAINER="datanode2"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop datanode2
        echo "DataNode2 stopped"
else 	echo ""
fi

CONTAINER="datanode3"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop datanode3
        echo "DataNode3 stopped"
else	echo ""
fi

CONTAINER="nodemanager1"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop nodemanager1
        echo "Node Manager 1 stopped"
else	echo ""
fi

CONTAINER="nodemanager2"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop nodemanager2
        echo "Node Manager 2 stopped"
else	echo ""
fi

CONTAINER="nodemanager3"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop nodemanager3
        echo "Node Manager 3 stopped"
else 	echo ""
fi

CONTAINER="historyserver"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop historyserver
        echo "History Server stopped"
else	echo ""
fi


CONTAINER="hive-metastore"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop hive-metastore
        echo "Hive Metastore stopped"
else	echo ""
fi

CONTAINER="hive-metastore-postgresql"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop hive-metastore-postgresql
        echo "Hive Metastore PostgreSQL stopped"
else 	echo ""
fi

CONTAINER="hive-server"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop hive-server
        echo "Hive Server stopped"
else	echo ""
fi

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


CONTAINER="tez"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        sudo docker stop tez
        echo "tez stopped"
else    echo ""
fi

