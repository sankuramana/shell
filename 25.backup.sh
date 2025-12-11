#!/bin/bash


SOURCE_DIR="$1"
DEST_DIR="$2"
DAYS="${3:-7}"   # Default: 7 days if not provided

if [ $# -lt 2 ]; then
    echo "Usage: sudo bash $0 <SOURCE_DIR> <DEST_DIR> [DAYS]"
    exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory $SOURCE_DIR does not exist"
    exit 1
fi

if [ ! -d "$DEST_DIR" ]; then
    echo "Destination directory $DEST_DIR does not exist. Please create it first."
    exit 1
fi

find "$SOURCE_DIR" -maxdepth 1 -name "*.log" -type f -mtime +"$DAYS" | while IFS= read -r file; do
    # Move each log file to destination
    echo "Moving: $file"
    mv "$file" "$DEST_DIR/"
done

# Check if any files were moved
cd "$DEST_DIR" || exit
LOG_FILES=$(ls *.log 2>/dev/null)

if [ -z "$LOG_FILES" ]; then
    echo "No log files found to zip in $DEST_DIR"
    exit 0
fi

# ------------------------------
# Zip the files in destination
# ------------------------------
ZIP_FILE="backup.zip"
rm -f "$ZIP_FILE"  # Remove old zip if exists

# Add each log file to the zip using a while loop
echo "$LOG_FILES" | while IFS= read -r log; do
    zip -u "$ZIP_FILE" "$log"
done

# Remove original .log files after zip
echo "$LOG_FILES" | while IFS= read -r log; do
    rm -f "$log"
done

echo "Backup completed. Zip file created at: $DEST_DIR/$ZIP_FILE"
