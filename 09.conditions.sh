#!/bin/bash

NUM=$1

if [ $NUM -gt 20 ]; then
    echo "Given number : $NUM is greater than 20"
elif [ $NUM -eq 20 ]; then
    echo "Given Number is: $NUM is equal to 20"
else
    echo "Given number : $NUM is lesser than 20"
fi
