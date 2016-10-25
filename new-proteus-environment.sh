# Variables

SERVICE=docker
STATUS=$(service $SERVICE status)

# Check Docker service and start Proteus Environment

if (( $(ps -ef | grep -v grep | grep $SERVICE | wc -l) > 0 ))
then
	echo " ____            _                  "
	echo "|  _ \ _ __ ___ | |_ ___ _   _ ___  "
	echo "| |_) | '__/ _ \| __/ _ \ | | / __| "
	echo "|  __/| | | (_) | ||  __/ |_| \__ \ "
	echo "|_|   |_|  \___/ \__\___|\__,_|___/ "
	echo ""
	echo ""
	echo "Proteus Environment"
	echo ""
        ./scripts/core.sh
else
	echo "Docker is Stopped."
fi 

