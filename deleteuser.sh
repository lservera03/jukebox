#!/bin/bash

    
echo Content-Type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
        	<head>
			<title>Delete user</title>
       		</head>
		<body>
			<h1>Delete user</h1>
			<form action="deluser.sh" method="post">
				<p>Username to delete: <input type="text" name="username" required></p>
				<input type="submit" value="Delete">
			</form>
			<a href="menu.sh">RETURN MENU</a><p>
		</body>
	</html>
"
