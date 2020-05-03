#!/bin/bash
linuravn(){
y=$(bc<<<"scale=3; $1*5 + $2*10 -10")
echo $y
return 
}
y1=`linuravn $1 $2`
echo "y=x*5+z*10-10= $y1"
exit 0
