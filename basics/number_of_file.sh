# Write a shell script that counts the number of files in a given directory and outputs whether there are more files than a specified number.

#!/bin/bash

read -p "Enter full path of the directory in which file needed to be counted : " dir
read -p "Enter a number : " num

if [ -d "${dir}" ]; then
    cd "${dir}"
    no_of_file=$(ls -lrt | grep -v ^d | wc -l )
    no_of_file=$((no_of_file - 1))
    echo $no_of_file
    if [ "$no_of_file" -gt "$num" ]; then
        echo "directory has more file than $num"
    else
        echo "directory has less files than $num"
    fi
else
    echo "Directory does not exists"
fi



