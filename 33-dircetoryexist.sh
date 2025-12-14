#!/bin/bash
DIRECTORY=$1
if [ -d $DIRECTORY ];then
    echo "$DIRECTORY is exist"
else 
    echo "$DIRECTORY is not Exist "
fi