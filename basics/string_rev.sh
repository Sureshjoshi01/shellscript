# Write a shell script to reverse a string provided as an argument.

#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 "
    exit 1
fi

input_string="$1"

# Get the length of the string
length=${#input_string}
echo "$length"

# Reverse the string
reversed_string=""
for (( i=$length-1; i>=0; i-- )); do
    reversed_string+="${input_string:$i:1}"
done

# Print the reversed string without extra characters
echo -n "$reversed_string"

