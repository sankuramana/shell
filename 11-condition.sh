#!/bin/bash
#checking if number is equal to 10 or lessthan or greaterthan
NUMBER=$1

if [ $NUMBER -lt 10 ]; then #maintain space  b/w backets
    echo "Given number is $NUMBER less than 10"
elif [ $NUMBER -eq 10 ]; then                     #elif  not elseif
    echo "given number $NUMBER is equal to 10"
else
    echo "given number is: $NUMBER greather than 10"
fi #end condition with fi


#-lt
#-gt
#-eq
#-ne not equal to
    