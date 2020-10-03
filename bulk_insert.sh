#!/bin/bash

echo "Generating Rows for cassandra"

for i in {900000..1000000}
do
    echo $i
    md5string=`echo -n ${i} | md5 | awk '{ print $1 }'`
    INSERT_QUERY="insert into TTEST.test(id,name) values(${i},\"${md5string}\");"
    echo $INSERT_QUERY >> data/inserts_9.cql
done
