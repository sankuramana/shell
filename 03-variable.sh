#!/bin/bash
#conversation between two ppl using variables
# syntax: variable=value
# PERSION1=ramana
# PERSION2=sandeep
# # to refer varaible we use $variable-name
# echo "hello sandeep"
# echo "hey hello ramana, how are you doing"
# echo "doing good  any plans tonight sandeep ?"
# echo "no ramana , just watching movie"
##################################################################
PERSION1=ramana
PERSION2=sandeep
# to refer varaible we use [$variable-name ]
echo "hello $PERSION2"
echo "hey hello $PERSION1, how are you doing"
echo "doing good  any plans tonight $PERSION2 ?"
echo "no $PERSION1 , just watching movie"
