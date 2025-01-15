# Write a shell script that parses a log file and counts the occurrences of a specific error message.

#!/bin/bash

read -p "Enter log file path : " log_dir
read -p "Enter log file name : " log_file
read -p "Enter the error to be searched : " log_patrn

if [ -d "${log_dir}" ]; then
    cd "${log_dir}"
    if [ -e "${log_file}" ]; then
        count=$(grep -i  "${log_patrn}" "${log_file}" | wc -l | xargs)
        echo "${log_patrn} occurs ${count} times in ${log_file}"
    else
        echo "${log_file} does not exists"
        exit 1
    fi
else
    echo "${log_dir} does not exists"
fi