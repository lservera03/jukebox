#!/bin/bash

echo Content-type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>Log management</title>
                </head>
                <body>
                <h1>Log management</h1>
"           
		perm="755"
		user=`whoami`
		sudo touch logs.txt
		sudo chmod $perm logs.txt
		sudo last $user > logs.txt 

echo -e "               
		<p>$text</p>		
                <a href="menu.sh">RETURN MENU</a><p><br>
                <a href="menuloguser.sh">RETURN LOG MANAGEMENT</a>
                </body>
        </html>
"

