#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "please run this script with root user"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "mysql installation failed"
    exit 1
else
    echo "mysql is installed successfully"
fi
#mysql installation is done
#installing nginx and chceking its installation
dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "instalation of nginx is failed"
    exit 1
else 
    echo "instalation of nginx is completed"
fi 
#same pyhton
dnf install python3 -y
if [ $? -ne 0 ]; then
    echo "installtion of python is failed"
    exit 1  
fi