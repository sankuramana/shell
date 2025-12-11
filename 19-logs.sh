#!/bin/bash
USERID=$(id -u)
R="\e[31]"
G="\e[32m"
Y="\e[33"
N="\e[0m"

mkdir -p $LOGS_FOLDER

LOGS_FOLDER="/var/log/installationlogs"
SCRIT_NAME=$(echo $0 |cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIT_NAME.log"


if [ $USERID -ne 0 ]; then
echo “use root user to create folder in varfolder”
exit1
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
if [ $? -ne 0 ];then
dnf install mysql -y
VALIDATE $? "MYSQL" #passing arguments while calling function &chceking status code of previous command
else 
    echo -e "MYSQL is already exsist $Y SKIPPING $N"
fi
dnf list installed nginx
if [ $? -ne 0 ];then    
dnf install nginx -y &>>$LOG_FILE
VALIDATE $? "NGINX" &>>$LOG_FILE
else 
     echo -e "NGINX is Already exist $Y SKIPPING $N" 
fi
dnf list installed python3
if [ $? -ne 0 ];then
dnf install python3 -y
VALIDATE $? "PYTHON3"
else
    echo -e "PYTHON3 EXIST already $Y SKIPPING $N"
fi



