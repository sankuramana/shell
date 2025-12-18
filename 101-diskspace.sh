DISK_USAGE=$(df -hT| grep -v Filesystem)
DISK_THRESHOLD=2 #usaually we check if disk usage is more than 75
 
 while IFS= read -r space 
 do
    MOUNT_ON=$(echo $space | awk '{ print $7}')
    USAGE=$(echo $space | awk '{print $6}'|cut -d "%" -f1) #cut has to be closed
 if [ $USAGE -gt $DISK_THRESHOLD ]; then
    echo "HIGH DISK USAGE IS "$MOUNT_ON" : "$USAGE" "
  fi
 done <<< $DISK_USAGE

