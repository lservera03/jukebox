#!/bin/bash

echo Content-type: text/html
echo


echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>user create</title>
                </head>
                <body>
"

read parametersPOST

username=`echo $parametersPOST | grep -oP '(?<=username=).*(?=&)'`
password=`echo $parametersPOST | grep -oP 'password=\K.*'`

if [ $(getent passwd $username) ] ; then

	echo "User already exists"
       
else
        sudo useradd -m -p $password $username
        echo "User has been creted successfuly"
fi

echo -e "
                <br><br>
                <a href="menu.sh">RETURN MENU</a><p>
		<a href="adduser.sh">CRETE AGAIN</a>
                </body>
        </html>
"

