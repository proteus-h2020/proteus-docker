#!/bin/bash

## Configuracion

function addProperty() {
  local path=$1
  local name=$2
  local value=$3

  local entry="<property><name>$name</name><value>${value}</value></property>"
  local escapedEntry=$(echo $entry | sed 's/\//\\\//g')
  sed -i "/<\/configuration>/ s/.*/${escapedEntry}\n&/" $path
}

function configure() {
    local path=$1
    local module=$2
    local envPrefix=$3

    local var
    local value
    
    echo "Configuring $module"
    for c in `printenv | perl -sne 'print "$1 " if m/^${envPrefix}_(.+?)=.*/' -- -envPrefix=$envPrefix`; do 
        name=`echo ${c} | perl -pe 's/___/-/g; s/__/_/g; s/_/./g'`
        var="${envPrefix}_${c}"
        value=${!var}
        echo " - Setting $name=$value"
        addProperty hadoop-2.7.3/etc/hadoop/$module-site.xml $name "$value"
    done
}

configure hadoop-2.7.3/etc/hadoop/core-site.xml core CORE_CONF
configure hadoop-2.7.3/etc/hadoop/hdfs-site.xml hdfs HDFS_CONF
configure hadoop-2.7.3/etc/hadoop/yarn-site.xml yarn YARN_CONF
configure hadoop-2.7.3/etc/hadoop/httpfs-site.xml httpfs HTTPFS_CONF
configure hadoop-2.7.3/etc/hadoop/kms-site.xml kms KMS_CONF
configure hadoop-2.7.3/etc/hadoop/mapred-site.xml mapred MAPRED_CONF

pwd
pwd
pwd
pwd
pwd

/usr/bin/supervisord


