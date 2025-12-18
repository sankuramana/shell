#!/bin/bas
diskspace=$(df -hT | grep -v Fileystem)
echo "disk space of server is:"
echo "$diskspace"