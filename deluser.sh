#!/bin/bash

echo Content-type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>user delete</title>
                </head>
                <body>
"

read parametersPOST

username=`echo $parametersPOST | grep -oP 'username=\K.*'`

if [ $(getent passwd $username) ] ; then
       	
	sudo userdel $username
	logger "JUKEBOX: User $username deleted"
        echo "User has been deleted successfuly"

else
        echo "User doesn't exists"
fi

echo -e "
                <br><br>
                <a href="menu.sh">RETURN MENU</a><p>
                <a href="deleteuser.sh">DELETE AGAIN</a>
                </body>
        </html>
"

