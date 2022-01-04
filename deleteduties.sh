#!/bin/bash

    
echo Content-Type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
        	<head>
			<title>Delete duties</title>
       		</head>
		<body>
			<h1>Delete duties</h1>
"
			user=`whoami`
			echo "crontab del usuario $user:"

			 if text=`sudo crontab -u $user -l | egrep -v '^\s*#'` ; then
			 sudo crontab -u $user -l | egrep -v '^\s*#' > mycron.txt
echo -e "
                	
			<br><br>
			
"
			cat -n mycron.txt | sed -e "s=$=<br>=g" | sed 's/./&)/6'
		else

echo -e "
			<p>There is not crontab </p><br>
"
			fi

echo -e "

			<form action="deletecron.sh" method="post">
				<p>Opcion: <input type="number" name="opcion" required></p>
				<input type="submit" value="Delete">
			</form><br>
			<a href="menu.sh">RETURN MENU</a><p>
			<a href="menutaskmanage.sh">RETURN TASK MANAGEMENT</a>
		</body>
	</html>
"
