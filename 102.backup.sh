#!/bin/bash
SOURCE_DIRECTORY=$1
DESTINATION_DIRECTORY=$2
DAYS=${3:-7} #default 7 if not provided
###############################################
LOG_FOLDER=/var/log/backup/
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME-app.log"
mkdir -p $LOG_FOLDER
########################################################
echo "script executed at $(date)" | tee -a $LOG_FILE
########################################################
#chceking two passing two folder to the script or not
if [ $# -lt 2 ];then
    echo "please have 2 argumunets source and destination"
    exit 1
fi
#Checking source folder is existing or not
if [ ! -d $SOURCE_DIRECTORY ];then
    echo " source folder is not exist $SOURCE_DIRECTOR please chhcek"
    exit 1
fi



 


