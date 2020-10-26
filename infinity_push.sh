#!/bin/bash

echo "Pushing Rows to cassandra"
i=1000001
while true; do
    echo $i
    temp=$(($i%10))
    md5string=`echo -n ${i} | md5 | awk '{ print $1 }'`
    department=`echo -n ${temp} | md5 | awk '{ print $1 }'`
    INSERT_QUERY="insert into TTEST.tablename(id,dept_name,name) values(${i},\"${department}\",\"${md5string}\");"
    cqlsh $1 -e "$INSERT_QUERY"
done
