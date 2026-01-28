#!/bin/bash

echo "All args passed to script: $@"
echo "No of vars passed in script: $#"
echo "script name: $0"
echo "pwd: $PWD"
echo "who is running the script: $USER"
echo "home directory: $HOME"
echo "pid: $$"
sleep 50 &
echo "background pid: $!"
echo "all args passed to scripts: $*"
