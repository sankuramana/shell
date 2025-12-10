#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "please run this script with root user"
    exit 1 #if not root user exit
fi
#if root user run this because shell script execute all commands either failureor not in the script.
##we are installing mysql only when user is root
#else we exit 1
dnf install mysql -y
if [ $? -ne 0 ]; then 
    echo "mysql installation if failed "
    exit 1
else 
    echo "mysql is installed succesfully"
fi
#installling nginx if mysql is installed succesfully
if [ $? -ne 0]; then
     echo "installing nginx is failed"
     exit 1

fi
dnf install ngin -y