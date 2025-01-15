#!/bin/bash

count=0
echo $count
for i in $1;
do 
    for j in $2: 
    do
    if [[ "$i" != "$j" ]]; then
        count=$(($count+1))
    fi
    done
done

echo " Hamming Distanec is : " 
echo $count   