# Write a shell script that creates a backup of a directory specified by the user.

#!/bin/bash

read -p " Enter path of the directory : " dir_path
read -p " Enter directory to be backed up : " backup_dir
echo "${dir_path}"
echo "${backup_dir}"

cd "${dir_path}"
if [ -d "${backup_dir}" ]; then
    tar -czf  /tmp/"${backup_dir}"_backup.tar.gz "${backup_dir}"
else
    echo "Directory does not exists"
fi