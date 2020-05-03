#!/bin/bash
fpasswdcopy=/etc/passwdcopy
if [ -f $passwdcopy ]
then
echo "file, in which there is previous version of passwd, exists"
else
"copying file"
sudo cp /etc/passwd /etc/passwdcopy
fi
sudo chmod 700 /etc/passwdcopy
while true 
do
diff /etc/passwdcopy /etc/passwd | awk -F ":" '{print $1, $3}' >> /home/mariia/newu.txt 
sudo cp /etc/passwd  /etc/passwdcopy
sleep 120
done
exit 0
