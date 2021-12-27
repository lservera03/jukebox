#!/bin/bash


    
echo Content-Type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
        	<head>
			<title>Login </title>
       		</head>
		<body>
			<h1>Welcome</h1>
			<form action="checkLogin.sh" method="post">
				<p>Username: <input type="text" name="username" required></p>
				<p>Password: <input type="password" name="password" required></p>
				<input type="submit" value="Login">
			</form>
		</body>
	</html>
"
