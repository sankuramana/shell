#!/bin/bash
R=”\e[31m”
G=”\e[32m”
Y=”\e[33m”

if [ $USERID –ne 0 ]; then
echo “use root user to create folder in varfolder”
exit1
fi
mkdir –p /var/log/installationlogs

