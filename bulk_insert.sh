#!/bin/bash

echo "Generating Rows for cassandra"
echo "" > inserts.cql

for i in {1..100000}
do
    echo $i
    md5string=`echo -n ${i} | md5 | awk '{ print $1 }'`
    INSERT_QUERY="insert into table(id,name) values(${i},\"${md5string}\");"
    echo $INSERT_QUERY >> inserts_0.cql
done
