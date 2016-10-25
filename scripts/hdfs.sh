# Setup Paths HDFS
sudo docker exec namenode /bin/sh -c "hdfs dfs -mkdir -p /proteus_data"
sudo docker exec namenode /bin/sh -c "hdfs dfs -mkdir /proteus_data/hsm"
sudo docker exec namenode /bin/sh -c "hdfs dfs -put /proteus-data/hsm_data/* /proteus_data/hsm/"

