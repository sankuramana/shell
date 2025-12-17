#!/bin/bash
numbers="1 2 3"
count=1
for i in $numbers
do
((i++))
done
echo "$count"