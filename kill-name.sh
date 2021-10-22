#!/bin/bash
kill -9 `ps -e | grep $1 | awk '{print $1}'` 
