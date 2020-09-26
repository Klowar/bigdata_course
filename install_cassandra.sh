#!/bin/bash

apt-get update -y
apt-get upgrade -y

apt-get install -y openjdk-8-jdk

mkdir -p /home/cassandra

cd /home/cassandra

wget https://apache-mirror.rbc.ru/pub/apache/cassandra/3.11.8/apache-cassandra-3.11.8-bin.tar.gz
tar -xzvf apache-cassandra-3.11.8-bin.tar.gz

git clone https://github.com/Klowar/bigdata_course.git

cat bigdata_course/cassandra.yaml > apache-cassandra-3.11.8/conf/cassandra.yaml

cd apache-cassandra-3.11.8
./bin/cassandra
