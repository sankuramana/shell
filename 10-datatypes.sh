#!/bin/bash
#by default verything in shell "string"
NUMBER1=10
NUMBER2=20
NUMBER3="5"
NUMBER4="1"
NAME="DEVOPS"
SUM=$(($NUMBER1+$NUMBER2))
SUM2=$(($NUMBER3+$NUMBER4))
SUM3=$(($NUMBER3+$NAME))
echo "sum is : $SUM"
echo "sum2 is : $SUM2"
echo "sum3 is : $SUM3"