#!/bin/bash
top5cpu=$(ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n6)
echo "top 5 cpu are :$top5cpu"