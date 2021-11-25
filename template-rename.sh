#!/bin/bash
cnt=0
for file in *
do
  if [ -f "$file" ];then
    newfile="$1$cnt$2"
    mv "$file" "$newfile"
    cnt=$(($cnt+1))
  fi
done
