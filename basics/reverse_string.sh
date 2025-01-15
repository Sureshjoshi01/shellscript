#Reversing strings (reading them from right to left, rather than from left to right) is a surprisingly common task in programming.

#!/bin/bash
str="$1"
len=${#str}

rev_str=""
while [ $len != 0 ]
do
rev_str=$rev_str${str: -1}
str=${str:0:$len-1}
len=$(( len - 1 ))
done
echo "$rev_str"