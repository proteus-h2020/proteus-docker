Docker Proteus Environment
=========
This repository contains the Docker multi-container application to deploy the Proteus Environment and manage the dataset.

Getting started
---------------

1. Download and install [Docker](https://www.docker.com).
2. Download and install [Docker Compose](https://docs.docker.com/compose/install/).

Running Proteus Environment
---------------

Use the Docker Proteus Environment is very easy. You only have to download the repository, copy the dataset in the propertly folder and execute the proteus-environment.sh script. To accomplish the first step, you have to download the repository with the commands:
```{r, engine='bash', count_lines}
git clone https://github.com/proteus-h2020/proteus-docker.git
cd proteus-docker
```

Into proteus-docker folder, you will find a repository called proteus-data with a empty folder hsm into them. This is where you have to put all the data that you want to manage in. To launch the Proteus Docker Environment, execute de shell script

```{r, engine='bash', count_lines}
./proteus-environment.sh
```

If the Docker daemon is running propertly, you will see the follow menu:

1. Install Proteus Environment
2. Check conatiners
3. Stop Containers
4. Delete Containers
5. Unistall Proteus Environment


You only have to select your favorite option and let Docker make all the hard work. The options offered by the Proteus Environment Menu are:

Proteus Environment menu
---------

1. Install Proteus Environment:
⋅⋅⋅This option will pull all the images and setup all the containers in the correct order from scratch.

2. Check status:
⋅⋅⋅This option will print the state of all the containers. The same as dockers ps -a

3. Stop all continers:
⋅⋅⋅Stop and remove all the containers. Free the memory.

4. Remove all containers:
⋅⋅⋅Stop and delete all the containers.

5. Unistall Proteus Environment:
⋅⋅⋅This option will delete all the containers and images used by Docker to running-up the Proteus Environment.

Architecture
-----
Docker Proteus Environment have one container based on the lightweight image of Alpine Linux for each service:

* Kafka
* Zookeeper

To use this Proteus environment it is only neccesary to put the Proteus dataset in the correct folder, ./proteus-data, and the desired fold, coiltimeseries_data o hsm_data, 
and respect the name for the CSV, it is have to been called PROTEUS.csv. Respecting the upper and lower case.

Once the PROTEUS.csv it is on place, we can start the Proteus environment. Once it finish the set up, we can start to see all the 
data that it is being stored by the Kafka topic. For this, it is only neccesary to use two commands. Firts, go into the Kafka container with the command:

```{r, engine='bash', count_lines}
docker exec -it kafka bash
```

If all goes propertly, we see a change in the bash, so we can confirm that we are into the running container. Once here, it is time to use the second command, wich it is going to see the data produced by the Kafka topic.


```{r, engine='bash', count_lines}
proteus
```

It is possible that if the containers have been deployed recently, the command take time to work until it reach the stable situation.


Future Work
-----------

* Integrate Apache Hadoop 
* Integrate Apache Flink
* Integrate Apache Hive

Note
---------------
This environmente it is build on Alpine Linux images and inspired in other GitHub proyects:
 
* Hive [big-data-europe/docker-hive](https://github.com/big-data-europe/docker-hive)
* Hadoop [big-data-europe/docker-hadoop](https://github.com/big-data-europe/docker-hadoop)
