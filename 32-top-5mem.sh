#!/bin/bash
top5mem=$(ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n6)
echo "top 5 mem are :$top5mem"