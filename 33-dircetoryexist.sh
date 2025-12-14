#!/bin/bash
DIRECTORY=$1
if [ -d $DIRECTORY ];then
    echo "$DIRCETORY is exist"
else 
    echo "$DIRCETORY is not Exist "
fi