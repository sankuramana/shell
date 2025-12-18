#!/bin/bas
diskspace=$(df -hT | grep -v Filesystem)
echo "disk space of server is:"
echo "$diskspace"
threshold=20

while IFS= read -r space
do
useage=$($space | grep -v Filesystem |cut -d "%" -f1)

done <<<$diskspace