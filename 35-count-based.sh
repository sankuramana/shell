#!/bin/bash
numbers="1 2 3"
count=0

for num in $numbers
do
  ((count++))
done

echo "$count"
