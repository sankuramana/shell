#!/bin/bash
USERID=$(id -u)
#colors #31=red #0=Normal/white
R="\e[31m"
N="\e[0m"

   #id -u will letyou know the user ID
   #if ID=0 root else non root user
#Installing mysql if user is root
if [ $USERID -ne 0 ];then
    echo "please use root user to install mysql"
    exit 1
fi
#checking if packagae is installed already
dnf list installed mysql
#using $? we can get to know istalled or not
if [ $? -eq 0 ];then
    echo "mysql installed already"
    exit 1
else 
    dnf install mysql -y
 fi

