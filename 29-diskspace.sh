#!/bin/bash
DISK_USAGE=$(df -hT | grep -v Filesystem)
DISK_THRESHOLD=2 #Usually we chcek avove 75% and mail if used above 75%


while IFS = read -r line
do 
USAHE=$(echo $line |awk print '{print $6}'|cut -d "%" -f1)

done <<< $DISK_USAGE