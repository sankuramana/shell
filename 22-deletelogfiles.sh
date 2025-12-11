R="\e[31m"
N="\e[0m"

#app-logs Dircetory
# file -name logfiles
# -mtime +14days
mkdir -p $SOURCE_DIR
SOURCE_DIR=/var/log
if [ ! -d $SOURCE_DIR ]; then
    echo "directory $SOURCE_DIR is not fount please create"
else
    FILES_TO_DELETE=$(find -name "*.log" -mtime +14)
    echo "existing files are $FILES_TO_DELETE"
    rm -f $FILES_TO_DELETE
    echo "deleted files $FILES_TO_DELETE"
fi
    

