#!/bin/bash

directory=/home/ec2-user/files-dircetory
echo "Available Files Are::"
for file in $directory/*
do
  echo "$file"
done
