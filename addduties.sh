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
                	Minute:<input type="text" name="minute" required>&nbsp (0-59-*)<p></p>
                	Hours: <input type="text" name="hours"required>&nbsp (0-23-*)<p></p>
                	Day: <input type="text" name="day"required>&nbsp (0-31-*)<p></p>
                	Month: <input type="text" name="month" required>&nbsp 0-12-* [12 == December]<p></p>
                	Weekday: <input type="text" name="weekday" required>&nbsp 0-7-*[7 o 0 == Sunday]<p></p>
                	Path or command: <input type="text" name="path" required>&nbsp / path / to / command - Script or command name to program <p></p>


				<input type="submit" value="Add">
					</form>

			<form action="procreatecron.sh" method="get"><br>
			<p style="color:red">CAUTIONS!!!</p>
			<p>If you are an expert you can type the command directly !!</p><br>

			Command cron:<input type="text" name="command_cron" required>&nbsp <br>

  			 <input type="submit" value="Add">		
			</p>
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

