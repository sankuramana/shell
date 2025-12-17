#!/bin/bash
directory=/home/ec2-user/files-dircetory
count=0
for emptyfiles in $directory/*
do
if [ ! -s $emptyfiles ];then
((count++))
fi

done
