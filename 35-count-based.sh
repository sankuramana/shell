#!/bin/bash
numbers="1 2 3"
count=1
for count in $numbers
do
((count++))
done
echo "$count"