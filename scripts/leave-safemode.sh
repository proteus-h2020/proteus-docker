sudo docker exec namenode /bin/sh -c "hdfs dfsadmin -safemode leave"
sudo docker exec namenode /bin/sh -c "hdfs fsck / -delete"
