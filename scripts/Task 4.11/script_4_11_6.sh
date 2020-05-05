#!/bin/bash
set -r
echo "What text are we looking for?"
read findthis
echo "In which file?"
read inthatfile
echo "Maximum number of lines:"
read maxnum
grep -m $maxnum "$findthis" $inthatfile |sort | cat -n 
exit 0
