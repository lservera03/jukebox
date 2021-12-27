#!/bin/bash



echo Content-type: text/html
echo


read post


pid=`echo $post | awk -F= '{print $2}'`


echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
         	<head>
               		<title>Manage process</title>
         	</head>
		<body>
"

if ps -p $pid > /dev/null
then
   	echo -e "<h2>The process is running</h2>
		<br>
		<form action="interrupt_process.sh" method="post">
			<p>Seconds: <input type="number" min="0" name="seconds" required> <input type="submit" value="Interrupt"></p>
			<input type="hidden" name="pid" value="$pid">
		</form>
		<br><br>		
		<form action="delete_process.sh" method="post">
			<input type="submit" value="Delete">
			<input type="hidden" name="pid" value="$pid"> 
		</form>	
	
	
	
	"
else
	echo -e "<h2>There isn't any process with that ID</h2>"
fi


echo -e "
		<br><br>
		<a href="process_management.sh">RETURN</a>	
		</body>
	</html>




"
