#!/bin/bash
count=0
for file in /home/ec2-user/files-dircetory/*
do
  if [ ! -s "$file" ]; then
    ((count++))
  fi
done
echo "Empty files: $count"
