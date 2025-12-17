#!/bin/bash
list="ramana ram raju gopal varma"
countt=5
for count in $list
do 
((countt++))
done
echo " count of name is: $countt"