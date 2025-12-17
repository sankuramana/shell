#!/bin/bash

directory=/home/ec2-user/files-dircetory

for file in "$directory"/*
do
  echo "$file"
done
