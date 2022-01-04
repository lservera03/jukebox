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
                <h1>Log Register</h1>
"             
	
logs=`sudo cat /var/log/syslog | grep "JUKEBOX:" | sed -e "s=$=<br>=g"`

echo $logs


echo -e "                		
		<br><br>		
                <a href="menu.sh">RETURN MENU</a><p><br>
                
                </body>
        </html>
"

