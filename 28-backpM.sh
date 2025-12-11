USERID=$(id -u)
#checking user or rootuser
if [ $USERID -ne 0 ]; then
    echo "please use root previliages for this"
    exit 1
 fi
 #logs
 LOGS_FOLDER=/var/log/shell-logs/
 SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
 LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"
  mkdir -p $LOGS_FOLDER

 echo "folder creation is done $LOGS_FOLDER | tee -a "$LOG_FILE"
 echo "SCRIPT_NAME iS $SCRIPT_NAME"
 echo "  hi :$LOG_FILE"


