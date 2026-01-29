#!/bin/bash

USERID=$(id -u)

LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"


if [ $USERID -ne 0 ]; then
    echo "Please use root access" | tee -a $LOGS_FILE
    exit 12
fi

validate (){
    if [ $1 -ne 0 ]; then
        echo "$2... Failed"
        exit 30
    else
        echo "$2.. Success"
    fi
}

for package in $@
do
    echo "dnf install $package -y" | tee -a $LOGS_FILE
    validate $? "Installing $package" | tee -a $LOGS_FILE
done