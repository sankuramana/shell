#!/bin/bash
diskspace=$(df -hT | grep -v Filesystem)
echo "disk space of server is:"
echo "$diskspace"
threshold=20

while IFS= read -r space
do
useage=$($space |awk "print{$6}" |cut -d "%" -f1)

done <<<$diskspace