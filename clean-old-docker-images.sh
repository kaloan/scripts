#!/bin/bash

if [ -z $1 ]
then
    echo 'ERROR: Missing command line variable for days'
    exit
fi

#docker image ls | awk 'NR!=1' | awk -v daysOld=$1 '$4 > daysOld' | awk '{print $3}' | xargs | docker image rm
imagesToClean=$(docker image ls | awk 'NR!=1' | awk -v daysOld=$1 '$4 >= daysOld' | awk '{print $3}')
echo $imagesToClean

docker image rm -f $imagesToClean
