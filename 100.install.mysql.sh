#!/bin/bash
USERID=$(id -u)
#chcek user is r
if [ $USERID -ne 0 ]; then
    echo "please run this script with root user"
    exit 1 
fi

dnf list installed mysql
if [ $? -ne 0];then
    echo "installed mysql already"
else 
  dnf install mysql -y
fi
