#!/bin/bash
# 1 to 100 print and 100 to 1

# for i in {100..1}
# do 
# echo " print $i"
# done
###############################################################
#odd or even
#if (number%2) -eq 0) 
number=$1
if (($number%2) -eq 0 )); then
    echo " $number is even"
else 
    echo "$number is ood"