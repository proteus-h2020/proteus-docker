CONTAINER="namenode"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
	echo "NameNode [ RUNNING ]"
elif [ $STATUS == "false" ] ; then
	echo "NameNode [ STOPPED ]"
fi

CONTAINER="resourcemanager"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "ResourceManager [ RUNNING ]"
else
        echo "ResourceManager [ STOPPED ]"
fi

CONTAINER="datanode1"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "DataNode 1 [ RUNNING ]"
else
        echo "DataNode 1 [ STOPPED ]"
fi

CONTAINER="datanode2"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "DataNode 2 [ RUNNING ]"
else
        echo "DataNode 2 [ STOPPED ]"
fi

CONTAINER="datanode3"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "DataNode 3 [ RUNNING ]"
else
        echo "DataNode 3 [ STOPPED ]"
fi

CONTAINER="nodemanager1"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "Node Manager 1 [ RUNNING ]"
else
        echo "Node Manager 1 [ STOPPED ]"
fi

CONTAINER="nodemanager2"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "Node Manager 2 [ RUNNING ]"
else
        echo "Node Manager 2 [ STOPPED ]"
fi

CONTAINER="nodemanager3"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "Node Manager 3 [ RUNNING ]"
else
        echo "Node Manager 3 [ STOPPED ]"
fi

CONTAINER="historyserver"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "HistoryServer [ RUNNING ]"
else
        echo "HistoryServer [ STOPPED ]"
fi


CONTAINER="hive-metastore"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "Hive Metastore [ RUNNING ]"
else
        echo "Hive Metastore [ STOPPED ]"
fi

CONTAINER="hive-metastore-postgresql"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "Hive Metastore PostgreSQL [ RUNNING ]"
else
        echo "Hive Metastore PostgreSQL [ STOPPED ]"
fi

CONTAINER="hive-server"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "Hive Server [ RUNNING ]"
else
        echo "Hive Server [ STOPPED ]"
fi

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

CONTAINER="tez"
STATUS=$(sudo docker inspect -f {{.State.Running}} $CONTAINER)

if [ $STATUS == "true" ]; then
        echo "Tez [ RUNNING ]"
else
        echo "Tez [ STOPPED ]"
fi

