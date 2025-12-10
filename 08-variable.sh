#!/bin/bash
# inside shell script execute the coomand and stores the output
START_TIME=$(date +%s) 
sleep 10
END_TIME=$(date +%s) #time in seconds
TOTAL_TIME=$(($END_TIME-$START_TIME))
echo "total executed time is $TOTAL_TIME"