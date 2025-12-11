#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


LOGS_FOLDER="/var/log/installationlogs"
SCRIT_NAME=$(echo $0 |cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIT_NAME.log"
mkdir -p $LOGS_FOLDER
echo "script executed at: $(date)"

if [ $USERID -ne 0 ]; then
echo “use root user to create folder in varfolder”
exit 1
fi

VALIDATE()
{
if [ $1 -ne 0 ]; then
    echo -e "  INSTALLING $2... $R is FAILURE $N"  &>>$LOG_FILE #-e is mandatory 
    exit 1
else 
    echo -e "INSTALLTION $2.....  $G SUCCESS $N" &>>$LOG_FILE
fi
}

dnf list installed mysql &>>$LOG_FILE
if [ $? -ne 0 ]; then
dnf install mysql -y
VALIDATE $? "MYSQL" #passing arguments while calling function &chceking status code of previous command
else 
    echo -e "MYSQL is already exist $Y SKIPPING $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then    
dnf install nginx -y &>>$LOG_FILE
VALIDATE $? "NGINX" &>>$LOG_FILE
else 
     echo -e "NGINX is Already exist $Y SKIPPING $N" 
fi

dnf list installed python3
if [ $? -ne 0 ]; then
dnf install python3 -y
VALIDATE $? "PYTHON3"
else
    echo -e "PYTHON3 EXIST already $Y SKIPPING $N"
fi



