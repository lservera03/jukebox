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
		user=`whoami`
		opcion=`echo $post | grep -oP 'opcion=\K.*'`	
		number=` wc -l mycron.txt | sed -e 's/mycron.txt//g'`
			
		if [[ $opcion -gt 0 && $opcion -le $number ]];
	       	
		then
		suma=23
		opp=`expr $opcion + $suma`

		sudo crontab -u $user -l > mycron.txt
		les=` sed "$opp d" mycron.txt`
		echo "$les" > mycron.txt
		sudo crontab -u $user mycron.txt	

		logger "JUKEBOX: Cron task deleted"
echo -e "	
		
		<p>Cron have been deleted successful</p><br>		
"
		else
echo -e "		
		<br><p>ERROR WRONG OPCION!!!</p><br>"
		fi
echo -e "
		
               <br>
                <a href="menu.sh">RETURN MENU</a><p><br>
                <a href="menutaskmanage.sh">RETURN TASK MANAGEMENT</a>
                </body>
        </html>
"

