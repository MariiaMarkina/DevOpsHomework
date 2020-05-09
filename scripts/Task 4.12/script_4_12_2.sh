#!/bin/bash
cd /home/mariia/ProjectTest
g++ main.cpp hello.cpp factorial.cpp -o /home/mariia/hello 
sum=$(ls | xargs md5sum)
echo "$sum" > /home/mariia/HashProject.txt
mydate=$(date |awk '{print $2"_"$3"_"$4"_"$5}')
tar -cvf /home/mariia/projecttest_$mydate.tar  /home/mariia/ProjectTest
while true
do
sum=$(ls | xargs md5sum)
echo "$sum" > /home/mariia/HashProjectNew.txt
razn=$(diff /home/mariia/HashProjectNew.txt /home/mariia/HashProject.txt)
if [ -z "$razn" ] 
then
echo "No changes" 
else
echo "There are some changes"
mydate=$(date |awk '{print $2"_"$3"_"$4"_"$5}')
tar -cvf /home/mariia/projecttest_$mydate.tar /home/mariia/ProjectTest
g++ main.cpp hello.cpp factorial.cpp -o /home/mariia/hello
cp /home/mariia/HashProjectNew.txt  /home/mariia/HashProject.txt
fi
sleep 60
done 
exit 0
