#!/bin/bash
G="\e[32m"
N="\e[0m"
directory=/home/ec2-user/files-dircetory
echo " $G Available Files Are:: $N"
for file in $directory/*
do
  echo "$file"
done
