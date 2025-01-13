#!/usr/bin/bash

# if [ -n "$(echo $1 | grep -o java)" ]; then
#	FILE_NAME=$1
# elif [ -z "$(echo $1 | grep -o '\.')" ]; then
# 	FILE_NAME=$(echo "$1.java")
# else
# 	FILE_NAME=$(echo "$1java")
# fi
FILE_NAME=$1
if [ -f "$FILE_NAME" ]; then
	cat $FILE_NAME | xclip -selection c
	echo -e "\033[1;38;5;11mI\033[0m: File content copied to clipboard."
else
	echo -e "\a\033[1;38;5;9mE\033[0m: File $FILE_NAME does not exist."
fi
