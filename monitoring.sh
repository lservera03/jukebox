#!/bin/bash



echo Content-type: text/html
echo



echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
         	<head>
               		<title>Monitoring</title>
         	</head>
		<body>
		<h2>Monitoring</h2>
"

cpu=`top -bn 1 | grep -oP '(?<=%Cpu\(s\):  ).*(?= us)'`

memory=`free | grep Mem | awk '{print $3/$2 * 100.0}'`

disk=`df -T / | grep 'root' | awk '{print $6}'`

uptime=`uptime -s`

last_connections=`last | grep 'pts/0' | head -10 | awk '{print $4,$5,$6}'`



echo -e "
		<p>CPU load: $cpu%</p>
		<p>Memory load: $memory%</p>
		<p>Disk load: $disk</p>	
		<p>Server in use since: $uptime</p>
		<p>Last 10 connections:  $last_connections</p>

		<br><br>
		<a href="menu.sh">RETURN</a>
		</body>
	</html>








"

