#!/bin/bash
#if number is divide by 2 the it is even else odd
echo "please enter the number"
read NUMBER
if [ $(($NUMBER % 2 ))-eq 0 ]; then 
    echo "the entered number: $NUMBER is EVEN"
else
    echo "The entered number : $NUMBER is ODD"
fi