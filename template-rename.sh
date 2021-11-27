#!/bin/bash
# Rename files in directory $1 to template name $2<number>$3
cnt=0
for file in $1/*
do
  if [ -f "$file" ];then
    newfile="$1/$2$cnt$3"
    mv "$file" "$newfile"
    cnt=$(($cnt+1))
  fi
done
