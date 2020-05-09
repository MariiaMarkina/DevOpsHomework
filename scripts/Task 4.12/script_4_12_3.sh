#!/bin/bash
exec >> /home/mariia/memory/stat.log
cs=0
cssum=0
for ((i=1; i < 11; i++))
do
vmstat
cs=$(vmstat |awk '{print $12}' | grep "[0-9]")
#echo "cs = $cs"
let "cssum=$cssum+$cs" 
sleep 3
done
let "srznach=$cssum/10"
#echo $cssum 
echo "average kernel context switches per second = $srznach"

echo "avarage processor usage over the past 15s: `uptime  |awk '{print $10}'`"

echo "current state of hard disc partitions:"
df -h
echo "current state of swapfile:"
free -m | tail -n -1

exit 0
