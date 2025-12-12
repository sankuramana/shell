#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "please run this script with root user"
    exit 1 
fi

dnf install mysql -y
if [ $? -ne 0 ]; then 
    echo "mysql installation if failed "
    exit 1
else 
    echo "mysql is installed succesfully"
fi
