#!/bin/bash
Y="\e[33m"
N="\e[0m"
echo "script executed at $(date)"

for package in $@ #has to be next to eachother like no gap{1..10}
do 
dnf list installed $package
if [ $? -ne 0 ];then
dnf install $package
else 
    echo -e " $package is istalled already... $Y SKIPPING $N "
fi
done