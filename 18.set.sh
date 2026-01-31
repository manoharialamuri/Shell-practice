#!/bin/bash

set -e

#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"


if [ $USERID -ne 0 ]; then
    echo -e "$R Please use root access $N" | tee -a $LOGS_FILE
    exit 12
fi

mkdir -p $LOGS_FOLDER

validate(){
    if [ $1 -ne 0 ]; then
        echo -e "$2... $R Failed $N"
        exit 1
    else
        echo -e "$2.. $G Success $N"
    fi
}

for package in $@
do
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -ne 0 ];then
        echo "$package is not installed....Installing now"
        dnf install $package -y &>> $LOGS_FILE
        #validate $? "$package Installation"
    else
        echo -e "$package is installed..$Y skipping $N"
    fi
done

