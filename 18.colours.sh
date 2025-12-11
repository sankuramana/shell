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
    echo -e "  INSTALLING $2... $R is FAILURE $N" #-e is mandatory
    exit 1
else 
    echo -e "INSTALLTION $2.....  $G SUCCESS $N"
fi
}
dnf list installed mysql
if [ $? -ne 0 ];then
dnf install mysql -y
VALIDATE $? "MYSQL" #passing arguments while calling function &chceking status code of previous command
else 
    echo -e "MYSQL is already exsist $y SKIPPING $N"
fi
dnf list installed nginx
if [ $? -ne 0 ];then    
dnf install nginx -y
VALIDATE $? "NGINX"
else 
     echo -e "NGINX is Already exist $Y SKIPPING $N"
fi
dnf list installed python3
if [ $? -ne 0 ];then
dnf install python3 -y
VALIDATE $? "PYTHON3"
else
    echo -e "NGINX EXIST already "$Y SKIPPING$N"
fi

