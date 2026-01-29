#!/bin/bash

USERID=$(id -u)

LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"


if [ $USERID -ne 0 ]; then
    echo "Please use root access"
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

dnf install nginx -y &>> $LOGS_FILE
validate $? "Installing nginx"

dnf install mysql -y &>> $LOGS_FILE
validate $? "Installing mysql"

dnf install nodejs -y &>> $LOGS_FILE
validate $? "Installing nodejs"
