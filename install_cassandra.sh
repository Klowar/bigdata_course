#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

wget http://mirror.linux-ia64.org/apache/cassandra/3.11.8/apache-cassandra-3.11.8-bin.tar.gz
tar -xzvf apache-cassandra-3.11.8-bin.tar.gz
