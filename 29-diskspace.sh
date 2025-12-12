#!/bin/bash
DISK_USAGE=$(df -hT | grep -v Filesystem)
DISK_THRESHOLD=2 #Usually we chcek avove 75% and mail if used above 75%

while IFS= read -r line
do 
USAGE=$(echo $line | awk '{print $6}'| cut -d "%" -f1)
PARTISION=$(echo $line |aws '{print $7}')
if [ $USAGE -ge $DISK_THRESHOLD];then
    echo " Hig usage on $PARTISON: $USAGE"
fi
done <<< $DISK_USAGE