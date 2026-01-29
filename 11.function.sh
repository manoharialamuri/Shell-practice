#!/bin/bash

USERID=$(id -u)

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

dnf install nginx -y
validate $? "Installing nginx"

dnf install mysqql -y
validate $? "Installing mysql"

dnf install nodejs -y
validate $? "Installing nodejs"
