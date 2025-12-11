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
# $@  it displays the passed arguments to the script
for package in $@ 
do 
dnf list installed $package
if [ $? -ne 0 ];then
dnf install $package -y
else 
echo -e "Existed $package already $R SKIPPING $N"
fi
done