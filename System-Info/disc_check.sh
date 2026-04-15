#!/bin/bash

if [  -z $1  ]; then
echo "Usage:  ./disc_check.sh <limit_percentage>"
exit  1
fi 

limit_percentage=$1
usage=$( df / | grep / | awk '{print$5}' | sed 's/%//')

if [ $usage -gt  $limit_percentage ];then 
echo "Okay, You need to manage your storage, usage=$usage%"
else 
 echo "Have plenty of availabe space, usage=$usage%"
exit 0
fi

