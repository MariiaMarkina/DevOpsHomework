#!/bin/bash
#echo ~/usernames.txt | while read newusername
#do
#done
sudo groupadd allnewusers
for newusername in $(cat ~/usernames.txt)
do
userpasswd=$(openssl rand -base64 14)
hash=$(openssl passwd -6 -salt xyz $userpasswd) 
sudo useradd -g allnewusers -s /bin/bash -d /home/$newusername -m $newusername -p $hash 
echo "Name: $newusername  Password: $userpasswd Hash=$hash"
echo "Name: $newusername  Password: $userpasswd" >> ~/$newusername.txt
done
exit 0
