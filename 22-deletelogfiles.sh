R="\e[31m"
N="\e[0m"

#app-logs Dircetory
# file -name logfiles
# -mtime +14days
SOURCE_DIR=/var/log/app-logs
mkdir -p $SOURCE_DIR
if [ ! -d $SOURCE_DIR ]; then
    echo "directory $SOURCE_DIR is not fount please create"
    exit 1
 fi
 FILES_TO_DELETE= $(find /var/log/app-logs/ -name "*.log" -mtime +14days)
 echo "Files to delete $FILES_TO_DELETE"
    

