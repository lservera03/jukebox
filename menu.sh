#!/bin/bash


echo Content-type: text/html
echo


echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
        	<head>
               		<title>Menu</title>
        	</head>
		<body>
		<h1>Menu</h1>
		<a href="process_management.sh">Process management</a><br><br>
		<a href="monitoring.sh">Monitoring</a><br><br>
		<a href="stopreboot.sh">Turn off/Reload</a><br><br>
		<a>Log management</a><br><br>
		<a href="gestionusuarios.sh">User management</a><br><br>
		<a href="filtering.sh">Packet Filtering</a><br><br>
		<a>Programmed task management</a><br><br>
		<a href="jukebox.sh">Musical Functionalities</a><br><br>
		</body>
	</html>
"
