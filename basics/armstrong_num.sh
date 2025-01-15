#An Armstrong number is a number that is the sum of its own digits each raised to the power of the number of digits

#!/bin/bash

num=$1
len=${#num}
count=${#num}
sum=0

if [ $len == 1 ]
then
echo "$1 is not armstrong number"
exit 1
fi

while [ $len != 0 ];
do

rem=$(( num % 10 ))
num=$(( num / 10 ))
num_1=$(( rem ** count ))
sum=$(( sum + num_1 ))
len=$(( len - 1 ))
done

if [ $sum == $1 ]
then
    echo "$1 is a armstrong number"
else
    echo "$1 is not an armstrong number"
fi