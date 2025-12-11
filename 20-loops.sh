#!/bin/bash
USERID=$(id -u)
Y="e\[33m"
if [$UERID -ne 0 ];then
    echo " please run with root user"
    exit 1
fi
echo "script executed at $(date)"

for package in $@ #has to be next to eachother like no gap{1..10}
do 
dnf list installed $package
if [ $? -ne 0 ];then
dnf install $package
else 
    echo -e "$package is istalled already... $Y SKIPPING $N "
echo $package

fi
done