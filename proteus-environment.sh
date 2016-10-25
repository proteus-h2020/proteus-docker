# Variables

SERVICE=docker
STATUS=$(service $SERVICE status)

# Check Docker service and start Proteus Environment


if (( $(ps -ef | grep -v grep | grep $SERVICE | wc -l) > 0 ))
then
	echo "Docker is Running"
	echo "Starting Proteus Environment"
        ./scripts/core.sh
else
	echo "Docker is Stopped."
fi 

