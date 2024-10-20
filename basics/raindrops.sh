#!/bin/bash
if [[ "$1" == "" ]]
then
    echo "Wrong Usage: One Command line argument is expected"
elif  (( "$1" % 3 == 0 )) && (( "$1" % 5  == 0 )) && (( "$1" % 7  == 0 ))
then
    echo "PlingPlangPlong"
elif (( "$1" % 3 == 0 ))
then
    if (( "$1" %5 == 0 ))
    then
        echo "PlingPlang"
    elif (( "$1" % 7 == 0 ))
    then 
        echo "PlingPlong"
    else
        echo "Pling"
    fi
elif (( "$1" % 5  == 0 ))
then
    if (( "$1" % 7 == 0 ))
    then
        echo "PlangPlong"
    elif (( "$1" % 3 == 0 ))
    then
        echo "PlingPlang"
    else
        echo "Plang"
        fi
elif (( "$1" % 7 == 0 ))
then
    if (( "$1" % 3 == 0 ))
    then
        echo "PlingPlong"
    elif (( "$1" % 5 == 0 ))
    then
        echo "PlangPlong"
    else
        echo "Plong"
    fi
else
    echo "$1"
fi 