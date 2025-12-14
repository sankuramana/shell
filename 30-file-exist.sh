#!/bin/bash
FILE=$1
if [ -f $FILE ];then
    echo " $FILE file is exist in thisfolder"
else 
    echo "$FILE is not exist"