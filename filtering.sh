#!/bin/bash



echo Content-type: text/html
echo




echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
         	<head>
               		<title>Packet Filtering</title>
         	</head>
		<body>
		<h1>Packet Filtering</h1>
		<br>
		<h3>Current filters: </h3>
"

current=`sudo iptables -S | sed -e "s=$=<br>=g"`

logger "JUKEBOX: Checked packet filtering information"

echo -e "	$current

		<h3>Add filter: </h3>

		<form action="add_filter.sh" method="get">
			<p>Direction: 	<select name="direction">
						<option value"INPUT">Input</option>
						<option value="FORWARD">Forward</option>
						<option value="OUTPUT">Output</option>
					</select>&nbsp
			   Protocol: 	<select name="protocol">
			   			<option value="all">All</option>
						<option value="tcp">Tcp</option>
						<option value="udp">Udp</option>
						<option value="icmp">Icmp</option>
						<option value="icmpv6">Icmpv6</option>
	   				</select>&nbsp
		     	   Source Ip:	<input type="text" name="source_ip" value="None">&nbsp
   			   Destination Ip: 	<input type="text" name="destination_ip" value="None">&nbsp
			   Port: 	<input type="number" name="port" min="1">&nbsp			   
			   Action: 	<select name="action">
			   			<option value="ACCEPT">Accept</option>
						<option value="DROP">Drop</option>
						<option value="REJECT">Reject</option>
						<option value="RETURN">Return</option>
			   		</select>&nbsp
			   <input type="submit" value="Add">		
			</p>
		</form>
		
		<br><br><br>
		<a href="menu.sh">RETURN</a>
		</body>
	</html>
"
