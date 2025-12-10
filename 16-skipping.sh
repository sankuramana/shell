#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "please run this script with root user"
    exit 1
fi

VALIDATE()
{
if [ $1 -ne 0 ]; then
    echo "instalation of $2 is failed"
    exit 1
else 
    echo "$2 is installed successfully"
fi
}

dnf install mysql -y

VALIDATE $? "MYSQL" #passing arguments while calling function and chceking status code of previous command
dnf install nginx -y
VALIDATE $? "NGINX"

dnf install python3 -y
VALIDATE $? "PYTHON3"

