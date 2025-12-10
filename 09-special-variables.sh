#!/bin/bash

# Print all variables passed to the script
echo "All variables passed to the script (\$@): $@"
echo "All variables passed to the script (\$*): $*"

echo "Script name: $0"
# Current directory
echo "Current directory: $PWD"
# Current user name
echo "Current user name: $USER"   # Must be CAPITAL letters
# User's home directory
echo "Home directory of the user: $HOME"
# PID of the current script
echo "PID of the script: $$"
# Run sleep in background (not in foreground)
sleep 15 &
# PID of the last command run in background
echo "PID of the last background command: $!"
echo " Exit status of last executed command: $?"
echo "vales passed to the script: $1, $2"

#$1, $2, $3...	Positional parameters (values passed to the script)
