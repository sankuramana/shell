#!/bin/bash
echo "print all varaible passed to the script : $@"
echo "print all variable passsed to the script: $*"
#each space will consider as one parameters
echo "script name: $0"
echo "current directory : $PWD"
echo "current user name : $USER" #capital not small letter
echo "home directory of the user: $HOME"
echo "PID of the scripy: $$"
