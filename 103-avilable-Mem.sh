#!/bin/bash
AVAILABLE_MEMORY=$(free -h |grep Mem | awk '{print $7}')
FREE_SPACE_IN_MEMEORY=$(free -h |grep Mem | awk '{print $4}')
echo "available memeory is $AVAILABLE_MEMORY"
echo "available free memory is $FREE_SPACE_IN_MEMEORY"
