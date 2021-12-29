#!/bin/bash


echo Content-type: text/html
echo


echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>Add user</title>
                </head>
                <body>
                <h1>Add user</h1>
		<form action="createuser.sh" method="post">
				<p>Username: <input type="text" name="username" required></p>
				<p>Password: <input type="password" name="password" required></p>
				<input type="submit" value="Create">
			</form>
			<a href="menu.sh">RETURN MENU</a><p>
                </body>
        </html>

"

