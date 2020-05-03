#!/bin/bash
pidofshell=""
pidofshell=$(pidof $SHELL)
# echo $pidofshell
 if   [ "$pidofshell" = "" ]
then echo 'bash is not working'
else
echo 'bash is working'
fi
mkdir Scripts
cd $HOME
HOMESUB=$(ls -lR  | grep ^d | awk '{print $9}')
n=$(ls -lR |grep ^d | wc | awk '{print $1}')
echo "In my home directory - $n subdirectories:"
echo "$HOMESUB"
echo  "type a word here:"
word="noword"
read word
echo "length of the word:"
echo ${#word}
a=$1
b=$2
c=$3
echo "$a + $b"
echo "-----= `bc <<< "scale=3; ($a+$b)/$c"`"
echo "$c"
cp script2.sh Scripts
exit 0
