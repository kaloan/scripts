#!/bin/bash
#cat $1 | tr -d "[:punct:]" | tr -s " " | tr " " "\n" | uniq -i | tr -d " " | uniq -ic
cat $1 | tr [:upper:] [:lower:] | xargs | tr -d  [:punct:] | tr -d "+\-*@#$%^&" | tr " " "\n" | sort | uniq -ic | tr -s " " | cut -c2- 
#| sort -d" " -f2
#sed 's/^[ \t]*//;s/[ \t]*$//'
