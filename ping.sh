#!/bin/bash


cat /tmp/server.list |  while read output
do
   ping -c 1 -W 2 "$output" > /tmp/output.txt
   if [ $? -eq 0 ]; then
   echo "node $output is up"
   else
   echo "node $output is down"
   fi
done
