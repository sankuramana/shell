#!/bin/bash

R="\e[31m"
N="\e[0m"

#app-logs Directory
SOURCE_DIR="/var/log/sanku/"

# Check and create directory
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Directory $SOURCE_DIR not found. Creating..."
    mkdir -p "$SOURCE_DIR"
fi

# Find log files older than 14 days
FILES_TO_DELETE=$(find "$SOURCE_DIR" -name "*.log" -mtime +14)

echo "Files to delete:"
echo "$FILES_TO_DELETE"
rm -rf $FILES_TO_DELETE
echo " deleted logfiles"
