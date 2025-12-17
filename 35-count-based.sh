#!/bin/bash
numbers="1 2 3 4 5 6"
count=0
for count in $numbers
do
((count++))
done
echo "$count"