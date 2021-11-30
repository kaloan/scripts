#!/bin/bash
# Kills a process using port $1
pidWithName=$(netstat -tulpn | grep :$1 | awk '{print $7}')
REGEX_NUMBER_START='^([0-9]*)' 
[[ $pidWithName =~ $REGEX_NUMBER_START ]]
pid=${BASH_REMATCH[1]}
if [ -z $pid ]; then
    echo "No process is using the given port"
    exit
fi
kill -9 $pid && echo "Killed the process $pidWithName"
