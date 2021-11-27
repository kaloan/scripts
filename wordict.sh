#!/bin/bash
# The words in the file $1 are printed in a list is the style of 
# <occurences> <word>, sorted by occurences
#cat $1 | tr -d "[:punct:]" | tr -s " " | tr " " "\n" | uniq -i | tr -d " " | uniq -ic
cat $1 | tr [:upper:] [:lower:] | xargs | tr -d [:punct:]"+\-*@#$%^&" | tr -s " " "\n" | sort | uniq -ic | sort -n -r | tr -s " " | cut -c2- 
#| sort -d" " -f2
#sed 's/^[ \t]*//;s/[ \t]*$//'
