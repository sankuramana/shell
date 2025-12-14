#!/bin/bash
DIRECTORY=$1
if [ -d $DIRECTORY ];then
    echo "$DIRECTORY is exist"
else 
    echo "$DIRECTORY is not Exist "
     mkdir -p $1
fi