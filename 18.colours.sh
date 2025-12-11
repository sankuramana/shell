#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo "please run this script with root user"
    exit 1
fi

VALIDATE()
{
if [ $1 -ne 0 ]; then
    echo -e "  INSTALLING $2... $R is FAILURE $N"
    exit 1
else 
    echo -e "INSTALLTION $2.....  $G SUCCESS $N"
fi
}

dnf install mysql -y

VALIDATE $? "MYSQL" #passing arguments while calling function and chceking status code of previous command
dnf install nginx -y
VALIDATE $? "NGINX"

dnf install python3 -y
VALIDATE $? "PYTHON3"

