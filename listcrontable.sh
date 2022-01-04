#!/bin/bash

echo Content-type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>List Crontab</title>
                </head>
                <body>
                <h1>List crontab</h1>
"
       
      		user=`whoami`

                echo "crontab del usuario $user:"
		
             if text=`sudo crontab -u $user -l | egrep -v '^\s*#'` ; then
            sudo crontab -u $user -l | egrep -v '^\s*#' > mycron.txt
echo -e "
                <br><br>
	
"	
		cat mycron.txt | sed -e "s=$=<br>=g"
	else

echo -e "
		<p>There is not crontab </p><br>

"
		
	fi 

echo -e "
                <br><br>
                <a href="menu.sh">RETURN MENU</a><p><br>
                <a href="menutaskmanage.sh">RETURN TASK MANAGEMENT</a>
                </body>
        </html>
"

