#!/bin/bash

echo Content-type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>Creat cron job</title>
                </head>
                <body>
                <h1>Creat cron job</h1>
"             			
			user=`whoami`
			get=`echo $QUERY_STRING`
			cron=`echo $get | grep -oP '(?<=command_cron=).*' | sed -e 's/+/ /g' | sed -e 's=%2F=/=g' `
			
			sudo crontab -u $user -l > mycron.txt
			echo $cron >> mycron.txt	
			sudo crontab -u $user mycron.txt

echo -e "                
		<p>$cron</p><br>
	
                <br><br><a href="menu.sh">RETURN MENU</a><p><br>
                <a href="addduties.s"h>RETURN ADD DUTIES</a>
                </body>
        </html>
"
