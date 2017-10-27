Docker Proteus Environment
=========
This repository contains the Docker multi-container application to deploy the Proteus Environment and manage the dataset.

Getting started
---------------

1. Download and install [Docker](https://www.docker.com).
2. Download and install [Docker Compose](https://docs.docker.com/compose/install/).

Running Proteus Environment
---------------

Using this docker is very easy. You only need to download the repo, copy the dataset into the suitable folder and execute the proteus-environment.sh script. To accomplish such requirements, you need to download this repo with the following commands:
```{r, engine='bash', count_lines}
git clone https://github.com/proteus-h2020/proteus-docker.git
cd proteus-docker
```
Once downloaded (and after moving to the proteus-docker folder), you will find a directory called proteus-data which contains an empty folder named hsm. This folder is the place where you have to put all the data that you want to manage.

To launch the Proteus Docker Environment, run the following command:

```{r, engine='bash', count_lines}
./proteus-environment.sh
```

If the Docker daemon is running properly, you will see the following menu:

1. Install Proteus Environment
2. Check conatiners
3. Stop Containers
4. Delete Containers
5. Unistall Proteus Environment


You only have to select your prefered option and Docker will do all the hard work for you. The options offered by the Proteus Environment Menu are:

Proteus Environment menu
---------

1. Install Proteus Environment:
⋅⋅⋅This option will pull all the images and setup all the containers in the correct order.

2. Check status:
⋅⋅⋅This option will print the state of all the containers. The same as dockers ps -a.

3. Stop all continers:
⋅⋅⋅Stop and remove all the containers. Free  memory.

4. Remove all containers:
⋅⋅⋅Stop and delete all the containers.

5. Unistall Proteus Environment:
⋅⋅⋅This option will delete all the containers and images used by Docker to running-up the Proteus Environment.

Architecture
-----
The PROTEUS virtual environment is based on te Alpine Linux OS (one instance per container). Each of these containers consists of two main services:

* Kafka
* Zookeeper

To use this Proteus environment it is only neccesary to put the Proteus dataset in the correct folder, ./proteus-data, and the desired fold, coiltimeseries_data o hsm_data, 
and respect the name for the CSV, it is have to been called PROTEUS.csv. Respecting the upper and lower case.

Once the PROTEUS.csv is on the right place, we can then run the Proteus environment. After running such script, we can have a look into the data being stored by the Kafka topic. To do this, it is only neccesary to use two commands. First, move to the Kafka container with the command:

```{r, engine='bash', count_lines}
docker exec -it kafka bash
```

If everything is going well, we will see a change in the bash, so we can confirm that we are into the running container. Once here, it is time to use the second command, which is going to show data being produced by the Kafka topic:


```{r, engine='bash', count_lines}
proteus
```
If the containers have been recently deployed, the command could take so much time (1 or 2 mnutes). Please, be patient :smile:

Future Work
-----------

* Integrate Apache Hadoop 
* Integrate Apache Flink
* Integrate Apache Hive

Note
---------------
This environment is built on top of Alpine Linux and inspired in other GitHub projects:
 
* Hive [big-data-europe/docker-hive](https://github.com/big-data-europe/docker-hive)
* Hadoop [big-data-europe/docker-hadoop](https://github.com/big-data-europe/docker-hadoop)
