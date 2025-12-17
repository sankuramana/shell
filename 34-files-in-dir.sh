#!/bin/bash
G="\e[32m"
N="\e[0m"
directory=/home/ec2-user/files-dircetory
echo -e "$G Available Files in files-directory is: $N"

for file in $directory/*.txt
do
  echo "$file"
done
