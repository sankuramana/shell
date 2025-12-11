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
echo "Script starts at $(date) "| tee -a $LOG_FILE
#dynamic script
USAGE()
{
    echo "usage sh backup.sh <SOUR-DIR> <DEST-DIR> DAYS[OPTIONAL] ,default is 7"
}

if [ $# -lt 2 ]; then
    USAGE
    exit 1
fi




