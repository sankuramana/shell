R="\e[31m"
N="\e[0m"

#app-logs Dircetory
# file -name logfiles
# -mtime +14days
SOURCE_DIR=/var/log/app-logs/

if [ ! -d $SOURCE_DIR ]; then
    echo "directory $SOURCE_DIR is not fount please create"
    mkdir -p $SOURCE_DIR
 fi
 FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +14)
 echo "Files to delete $FILES_TO_DELETE"
    

