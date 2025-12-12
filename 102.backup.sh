#!/bin/bash
R="\e[31m"
N='\e[0m'
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
    echo -e " $R please have 2 argumunets source and destination $N"
    exit 1
fi
#Checking source folder is existing or not
if [ ! -d $SOURCE_DIRECTORY ];then
    echo -e "$R source folder is not exist $SOURCE_DIRECTOR please chhcek $N"
    exit 1
fi
if [ ! -d $DESTINATION_DIRECTORY ]; then
    echo " destination directory is $DESTINATION_DIRECTOR not exist"
fi 
#####find the .log file#############
FILES=$(find $SOURCE_DIRECTORY -name "*.log" -type f -mtime +$DAYS) 
#donot forget to give sourec directory
if [ ! -z "${FILES}" ];then  #double quotes
    echo "files found"
    TIMESTAMP=$(date +%F-%M-%H-%S)
    ZIP_FILENAME="$DESTINATION_DIRECTORY/app-logs-$TIMESTAMP.zip"
    echo " zipfile name is $ZIP_FILENAME"
    find $SOURCE_DIRECTORY -name "*.log" -type f -mtime +$DAYS | zip -@ -j $ZIP_FILENAME

else
    echo -e "no files to archive ....  $R SKIPPING $N"
fi
#deleteingfiles
while IFS= read -r files
do 
echo "deleting $files"
rm -rf $files
echo "deleted $files"
done <<< $FILES



 


