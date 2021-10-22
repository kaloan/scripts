#!/bin/bash
REGEX_BRANCH_START='^(\w*\/#[0-9]*)'
[[ $1 =~ $REGEX_BRANCH_START ]]
#echo $?
#echo ${BASH_REMATCH[@]}
echo ${BASH_REMATCH[1]}
