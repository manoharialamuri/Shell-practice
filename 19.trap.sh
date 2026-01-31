#!/bin/bash

set -e

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

echo "Hello World!"
echo "I am learning Linux"
echoo "I made a mistake"
echo "I realised it"
