#!/bin/bash

echo Content-type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>Add duties</title>
                </head>
                <body>
                <h1>Add duties</h1>
                <form action="createcron.sh" method="get">
                	Username: <input type="text" name="weekday" required>&nbsp <p></p>
                	Minute:<input type="number" name="minute" min="0" max="59" required>&nbsp (0-59)<p></p>
                	Hours: <input type="number" name="hours" min="0" max="23" required>&nbsp (0-23)<p></p>
                	Day: <input type="number" name="day" min="0" max="31" required>&nbsp (0-31)<p></p>
                	Month: <input type="number" name="month" min="0" max="12" required>&nbsp 0-12 [12 == December]<p></p>
                	Weekday: <input type="number" name="weekday" min="0" max="7" required>&nbsp 0-7[7 o 0 == Sunday]<p></p>
                	Path or command: <input type="text" name="weekday" required>&nbsp / path / to / command - Script or command name to program<p></p>


				<input type="submit" value="Add">
					</form>
					<br>
				<p>Exemple of sintax is:</p>
				<p>1 2 3 4 5 /path/to/command arg1 arg2</p>
				<p>OR</p>
				<p>1 2 3 4 5 /root/backup.sh</p><br>
                <a href="menu.sh">RETURN MENU</a><p><br>
                <a href="menutaskmanage.sh">RETURN TASK MANAGEMENT</a>
                </body>
        </html>
"

