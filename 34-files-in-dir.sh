#!/bin/bash

directory=/home/ec2-user/files-dircetory
echo "avilable files are"
for file in $directory/*
do
  echo "$file"
done
