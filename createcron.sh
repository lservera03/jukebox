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
			
			minute=`echo $get | grep -oP '(?<=minute=).*(?=&hours)'`			
			hours=`echo $get | grep -oP '(?<=hoursrequired=).*(?=&day)'`
			day=`echo $get | grep -oP '(?<=dayrequired=).*(?=&month)'`
			month=`echo $get | grep -oP '(?<=month=).*(?=&weekday)'`
			weekday=`echo $get | grep -oP '(?<=weekday=).*(?=&path)'`
			path=`echo $get | grep -oP '(?<=path=).*' | sed -e 's=%2F=/=g'`
			comand="$minute $hours $day $month $weekday $path"
			
			sudo crontab -u $user -l > mycron.txt
			
			echo "$minute $hours $day $month $weekday $path" >> mycron.txt

			sudo crontab -u $user mycron.txt
			
			logger "JUKEBOX: Created cron task"
echo -e "                	
		<p>$comand</p><br>

		<br><br><a href="menu.sh">RETURN MENU</a><p><br>
		<a href="menutaskmanage.sh">MENU TASK MANAGE</a><p><br>
                <a href="addduties.s"h>ADD MORE DUTIES</a>
                </body>
        </html>
"
