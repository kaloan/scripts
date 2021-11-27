#!/bin/bash
# Kills a process with a name matching the regex $1
kill -9 `ps -e | grep $1 | awk '{print $1}'` 
