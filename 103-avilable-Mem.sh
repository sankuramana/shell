#!/bin/bash
#COLORS
N="\e[0m"
R="\e[31m"
AVAILABLE_MEMORY=$(free -h |grep Mem | awk '{print $7}')
FREE_SPACE_IN_MEMORY=$(free -h |grep Mem | awk '{print $4}')
echo -e "${R} available memeory is $AVAILABLE_MEMORY ${N}"
echo  -e " ${R} available free memory is $FREE_SPACE_IN_MEMORY ${N}"
#echo "✅ Available Memory: $AVAILABLE_MEMORY | 💡 Free Memory: $FREE_SPACE_IN_MEMORY"

