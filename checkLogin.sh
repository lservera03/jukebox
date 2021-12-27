#!/bin/bash


echo "Content-type: text/html"
echo



read parametersPOST


username=`echo $parametersPOST | grep -oP '(?<=username=).*(?=&)'` 
password=`echo $parametersPOST | grep -oP 'password=\K.*'`


if sshpass -p $password ssh -o StrictHostKeyChecking=no $username@localhost > /dev/null 2>&1;
then
	./menu.sh
else
	./login_error.sh	
fi
