#!/bin/bash

echo "Generating Rows for cassandra"

for i in {900000..1000000}
do
    echo $i
    temp=$(($i%10))
    md5string=`echo -n ${i} | md5 | awk '{ print $1 }'`
    department=`echo -n ${temp} | md5 | awk '{ print $1 }'`
    INSERT_QUERY="insert into TTEST.tablename(id,dept_name,name) values(${i},\"${department}\",\"${md5string}\");"
    echo $INSERT_QUERY >> data/department_insert_9.cql
done
