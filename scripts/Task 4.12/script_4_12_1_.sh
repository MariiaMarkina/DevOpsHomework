#!/bin/bash
for newusername in $(cat ~/usernames.txt)
do
sudo userdel $newusername 
done
exit 0
