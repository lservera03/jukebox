#!/bin/bash

echo Content-type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>Management of pre-programmed tasks</title>
                </head>
                <body>
                	<h1>Management of pre-programmed tasks</h1>
				<a href="listcrontable.sh">List crontable</a><br><br>
				<a href="addduties.sh">Add duties</a><br><br>
				<a href="deleteduties.sh">Delete duties</a><br><br>

                <br><br>
                <a href="menu.sh">RETURN MENU</a><p>          
                </body>
        </html>
"

