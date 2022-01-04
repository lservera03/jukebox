#!/bin/bash


echo Content-type: text/html
echo


echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
         	<head>
               		<title>Interrupt process</title>
         	</head>
		<body>
"

read parametersPOST



seconds=`echo $parametersPOST | grep -oP '(?<=seconds=).*(?=&)'` 
pid=`echo $parametersPOST | grep -oP 'pid=\K.*'`


sudo kill -SIGSTOP $pid

sleep $seconds

sudo kill -SIGCONT $pid

logger "JUKEBOX: Process $pid interrupted for $seconds seconds"

echo -e "	<h2>The process with PID $pid has been interrupted for $seconds seconds.</h2>
		
		<br><br>
		<a href="process_management.sh">RETURN</a>
		</body>
	</html>




"
