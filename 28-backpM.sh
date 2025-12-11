USERID=$(id -u)
#checking user or rootuser
R="\e[31m"
N="\e[0m"
SOURCE_DIR=$1
DESTINATION_DIR=$2
DAYS=${3:-7} #if  not provided consider as 7days else 3 allocated automatically

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
    echo -e "$R usage sh backup.sh <SOUR-DIR> <DEST-DIR> DAYS[OPTIONAL] ,default is 7 $N"
}

if [ $# -lt 2 ]; then
    USAGE
    exit 1
fi
#chceking conditions
if [ ! -d $SOURCE_DIR ];then
    echo -e "$R Source dircetory $SOURCE_DIR dose not EXIST $N"
    exit 1
fi
if [ ! -d $DESTINATION_DIR ];then
    echo -e "$R destination dircetory $DESTINATION_DIR is not EXIST $N"
    exit 1
fi
#then findout the files in 7days old
FILES=$(find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS)
#to check emty or  not -z will check
if [ ! -z "${FILES}" ]; then
    echo "files found"
    #if found need to zip into one 
    TIMESTAMP=$(date +%F-%H-%M)
    ZIP_FILE_NAME="$DESTINATION_DIR/app-logs-$TIMESTAMP.zip"
    echo " zip file name $ZIP_FILE_NAME "
    find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS | zip -@  "$ZIP_FILE_NAME" #-j

else
    echo -e "no files to archive.. $R skippinkg $N"
 fi   






