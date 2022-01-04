#!/bin/bash


echo Content-type: text/html
echo




echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
         	<head>
               		<title>Add filter</title>
         	</head>
		<body>
		
"

get=`echo $QUERY_STRING`



direction=`echo $get | grep -oP '(?<=direction=).*(?=&protocol)'`
protocol=`echo $get | grep -oP '(?<=protocol=).*(?=&source_ip)'` 
source_ip=`echo $get | grep -oP '(?<=source_ip=).*(?=&destination_ip)'` 
destination_ip=`echo $get | grep -oP '(?<=destination_ip=).*(?=&port)'`
port=`echo $get | grep -oP '(?<=port=).*(?=&action)'` 
action=`echo $get | grep -oP '&action=\K.*'`

direction=${direction^^} #to upper case

iptable="sudo iptables -A $direction"

if [ "$source_ip" != "None" ]
then
	iptable="$iptable -s $source_ip"
fi

if [ "$destination_ip" != "None" ]
then
	iptable="$iptable -d $destination_ip"
fi

iptable="$iptable -p $protocol"

if [ -n "$port" ]
then
	iptable="$iptable --dport $port"
fi

iptable="$iptable -j $action"

echo $iptable

if `$iptable`;
then
	logger "JUKEBOX: Added new iptable filter"
	echo "<h2>Filter added successfully</h2>"
else
	echo "<h2>ERROR: There is an error in filter's  parameters</h2>"
fi



echo -e " 
		<br><br>
		<a href="filtering.sh">RETURN</a>

		</body>
	</html>




"
