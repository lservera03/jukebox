#!/bin/bash

echo Content-type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>List Crontab</title>
                </head>
                <body>
                <h1>List crontab</h1>
"
        while IFS=":" read -r usuario _
        do
        #       echo "crontab del usuario ${usuario}:"
                cron=sudo crontab -l -u $usuario
                echo $cron

        done < /etc/passwd

echo -e "
                <br><br>
                <a href="menu.sh">RETURN MENU</a><p><br>
                <a href="menutaskmanage.sh">RETURN TASK MANAGEMENT</a>
                </body>
        </html>
"

