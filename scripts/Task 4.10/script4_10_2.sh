#!/bin/bash
while true
do
date | awk '{print $2, $3, $4, $5}' >> /home/mariia/tmp/timeproc.txt
proc=$(ps -a |wc -l)
let proc=$proc-1
echo $proc >> /home/mariia/tmp/timeproc.txt
sleep 60 
done
exit 0
