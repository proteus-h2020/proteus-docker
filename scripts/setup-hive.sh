#Creamos tabla en Hive

sudo docker exec hive-server /bin/sh -c "hive -e 'CREATE DATABASE IF NOT EXISTS proteus'"

# HIVE_HSM2 está en el directorio padre de donde arranca el hive-server, añado el ../
sudo docker exec hive-server /bin/sh -c "hive -f ../proteus-data/HIVE_HSM2.hql"

