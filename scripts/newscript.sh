#!/bin/bash
ls -l -R /home/mariia > listing.txt
sed 's/mariia/randomname/g' listing.txt > sedfile.txt
awk '{gsub("mariia","randomname2"); print }' listing.txt > awkfile.txt
sed '/total/d' listing.txt > deleted.txt
awk '{print $6, $7, $8, $9}' listing.txt > awkgrep.txt
awk '$9 ~/[0-9]/ {print $9}' listing.txt > havedigit.txt
awk '$9 ~ /\./ {print $9}' listing.txt > haveext.txt
exit 0
