#!/bin/bash



echo Content-type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>Turn off / Reboot</title>
                </head>
              
	      	<body>
              
	      <h1>the server is restarting!!</h1>
               
		
		</body>
        </html>

"
sudo shutdown -r now

