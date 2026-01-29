#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please use root access"
    exit 12
fi

echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing nginx... Failed"
    exit 30
else
    echo "Installing nginx.. Success"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing mysql.....Failed"
    exit 2
else   
    echo "Installing mysql....Success"
fi

dnf install nodejs -y

if [ $? -ne 0 ];then
    echo "Installing nodejs ...Failed"
    exit 3
else
    echo"Installing nodeja....Success"
fi