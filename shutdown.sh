#!/bin/bash

profile=$1
state_code=16

if [ $# -eq 0 ]
  then
    echo "You need to provide Profile name"
    exit 1
fi

aws ec2 describe-instances --profile $profile --filters Name=instance-state-code,Values=$state_code \
    | grep InstanceId \
    | awk '{ print substr($2, 2, 19) }' \
    | while read id ; do aws ec2 stop-instances --instance-ids $id --profile $profile ; done
