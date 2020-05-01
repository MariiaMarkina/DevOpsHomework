#!/bin/bash
#task 4.9.7:
if [[ $# -lt 3 ]]
then
echo "Greater number is:"
	if [[ $1 -gt $2 ]]
	then
	 echo $1
	else
	 echo $2
	fi

else
echo "ERROR, too many parameters"
fi
#task 4.9.8:
slovopath="path"
a="a"
ind=$(expr index $slovopath $a)
echo "position of the 'a' in 'path': "
echo $ind
#task 4.9.9:
echo $(date | awk '{print $1, $3, $2, $4, $5}')
#task 4.9.10:
echo "I entered directory $PWD at $( date +%R ) using $UID identifier"
#task 4.9.11:
echo 'last directory in the $PATH:'
echo $PATH |grep -o "/[^:]*$"
echo $PATH | awk -F ':' '{print $NF}'
echo `expr "$PATH" : '.*\(:/[[:print:]+]*\)'` | tr -d ":"
#task 4.9.13:
net=$(lynx -dump < wget http://www.google.com)
echo " Google.com: $net"
#task 4.9.12:
echo ${NEWVAR?"There is no such variable"}
echo ${PATH?"There is no such variable"}

exit 0

