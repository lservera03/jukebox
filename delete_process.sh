#!/bin/bash


echo Content-type: text/html
echo



read post


pid=`echo $post | awk -F= '{print $2}'`


sudo kill -KILL $pid

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
         	<head>
               		<title>Delete process</title>
         	</head>
		<body>
			<h2>The process has been deleted</h2>
			<br><br>

			<a href="process_management.sh">RETURN</a>
		</body>
	</html>	
"
