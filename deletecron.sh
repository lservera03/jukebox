#!/bin/bash

echo Content-type: text/html
echo

read post

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>Delete Crontab</title>
                </head>
                <body>
                <h1>Delete crontab</h1>
"
		opcion=`echo $post | grep -oP 'opcion=\K.*'`	
		echo $opcion
		
		

echo -e "
		
               <br>
                <a href="menu.sh">RETURN MENU</a><p><br>
                <a href="menutaskmanage.sh">RETURN TASK MANAGEMENT</a>
                </body>
        </html>
"

