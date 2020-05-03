#!/bin/bash
arr=($@)
for i in ${arr[@]}
do
res=$(bc <<<"scale=2; $i^2")
echo $res
done
exit 0
