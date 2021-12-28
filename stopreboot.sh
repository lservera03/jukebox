#!/bin/bash


echo Content-type: text/html
echo


echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
        	<head>
               		<title>Turn off / Reboot</title>
        	</head>
		<body>
		<h1>Turn off / Reboot</h1>
		
		<a href="reboot.sh">reboot</a><br><br><br>
		
		<a href="turnoff.sh">turnoff</a><br><br><br>
		<a href="menu.sh">RETURN</a>
		</body>
	</html>
"
