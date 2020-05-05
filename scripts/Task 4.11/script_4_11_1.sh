#!/bin/bash
echo "Files >20Gb:"
find /usr -type f -size +20M

echo "Users home directory"
echo "$USER"
echo "contains usual files:"
all=$(ls -l -a $HOME |grep  ^- |wc -l)
usual=$(ls -l $HOME |grep ^-|wc -l)
echo $usual
hidden=$(bc <<< $all-$usual)
echo "contains hidden files:"
echo $hidden

echo "Time and date: `date |awk '{print $2, $3, $4, $5}'`"
echo "Current users: `w --no-header| awk '{print $1}'`"
#system users are included
echo "All users: `cat /etc/passwd |awk -F ':' '{print $1}' `"
echo "Systems uptime: `uptime`"

echo "Processes of user $USER:"
ps U $USER |wc -l
echo "Processes of user root:"
ps U root |wc -l

echo "Processes, that use most RAM:"
ps aux --sort -rss | head  -n 6
exit 0
