#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please use root access"
    exit 12
fi

echo "installing nginx"
dnf install nginxxx -y

if [ $? -ne 0 ]; then
    echo "Installing nginx... Failed"
    exit 30
else
    echo "Installing nginx.. Success"
fi


