#!/usr/bin/env bash 
res=`curl -s https://corona-stats.online/MM\?source\=2 \ 
  | grep 'Myanmar' \ 
  | sed 's/\s*//g ; s/║//g ; s/│/; /g ; s/ //g ; s/\x1b\[[0-9;]*m//g' \ 
  | awk -F';' '{print "😷: " $3 ","} {print "🤒:" $8 ","} {print "😊:" $7 ","}  {print "💀: " $5}'` 
 
echo $res
