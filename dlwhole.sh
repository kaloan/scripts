#/bin/bash

for j in $(seq $2 $3) 
do
  wget "$1$j$4" 
done
