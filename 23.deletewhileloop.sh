#!/bin/bash



FOLDER_TO_CREATE=/var/log/sanku/
FILES_TO_DELETE=$(find $FOLDER_TO_CREATE -name "*.log" -mtime +14)

 if [ ! -d $FOLDER_TO_CREATE ]; then
    echo "directory is not found creating"
    mkdir -p $FOLDER_TO_CREATE
    
 fi
while  IFS= read -r file
    do 
        echo "deleting file: $file "
        rm -f $file
        echo "deleted files: $file "

    done <<<"$FILES_TO_DELETE"
