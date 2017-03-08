sudo docker rmi $(sudo docker images | grep kafka)

sudo docker rmi $(sudo docker images | grep zookeeper)

sudo docker rmi $(sudo docker images | grep ssh)

sudo docker rmi $(sudo docker images | grep base)

sudo docker rmi $(sudo docker images | grep alpine)


