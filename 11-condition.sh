#!/bin/bash
#checking if number is equal to 10 or lessthan or greaterthan
NUMBER=$1

if[ $NUMBER -lt 10 ]; then
    echo "Given number is $NUMBER less than 10"
elsefi[$NUMBER -eq 10  ]; then
    echo "given number $NUMBER is equal to 10"
else
    echo "given number is: $NUMBER greather than 10"
fi
    