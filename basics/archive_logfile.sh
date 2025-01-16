#Write a script that checks the size of a specified log file. If it exceeds a certain threshold, it archives the log file and starts a new one.

#!/bin/bash

file_path=$1
file_name=$2

# check if directory exists or not
if [ -d "${file_path}" ]; then
    cd ${file_path}
else
    echo "Directory does not exits"
    exit 1
fi 

# check if directory exists or not
if [ -e  "${file_name}" ]; then
    file_size=$(wc -c  < "${file_name}")
    if [ ${file_size}  -gt  50000 ]; then
        tar -czf ${file_name}.tar.gz ${file_name} 
        touch ${file_name}
    else
        echo "file size is less than 50K"
    fi
else
        echo "file does not exists"
        exit 1
fi
