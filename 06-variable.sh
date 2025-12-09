#!/bin/bash
echo "please enter the pin number"
#read PIN_NUMBER  #here PIN_NUMBER IS THE VARAIBLE 
read -s PIN_NUMBER #hides the values
# syntax read variable_name
# read is a built-in command in Bash that accepts input from the keyboard and stores it in a variable.
echo "pin number is $PIN_NUMBER"



# "reas -s"
#t does NOT show the characters the user types.
#Useful for passwords, secret keys, tokens, PIN, etc.
