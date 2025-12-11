#!/bin/bash

FOLDER="/var/log/sanku"

# Check if folder exists
if [ ! -d "$FOLDER" ]; then
    echo "Folder $FOLDER does not exist!"
    exit 1
fi

# Find files older than 14 days
FILES_TO_DELETE=$(find "$FOLDER" -name "*.log" -mtime +14)

# Delete files one by one
while IFS= read -r file
do
    echo "Deleting: $file"
    rm -f "$file"
done <<< "$FILES_TO_DELETE"
