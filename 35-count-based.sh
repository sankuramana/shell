#!/bin/bash
numbers="1 2 3"
count=1
for total in $numbers
do
((count++))
done
echo "$total"