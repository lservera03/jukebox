#!/bin/bash


echo "Content-type: text/html"
echo



read parametersPOST


username=`echo $parametersPOST | grep -oP '(?<=username=).*(?=&)'` 
password=`echo $parametersPOST | grep -oP 'password=\K.*'`


if sshpass -p $password ssh -o StrictHostKeyChecking=no $username@localhost > /dev/null 2>&1;
then
	logger "JUKEBOX: Login successful for user $username"
	./menu.sh
else
	logger "JUKEBOX: Login incorrect for user $username"
	./login_error.sh	
fi
