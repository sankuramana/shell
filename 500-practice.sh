#!/bin/bas
diskspace=$(df -hT | grep -v Filesystem)
echo "disk space of server is:"
echo "$diskspace"