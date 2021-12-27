#!/bin/bash



echo Content-type: text/html
echo



echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
	<html>
         	<head>
               		<title>Process Management</title>
         	</head>
		<body>
			<h1>Process Management</h1>
			<br>
			<table>
			"
			mapfile -t output < <( ps aux )


			for j in "${output[@]}"
       			do
				counter=0
				echo "<tr>"
				fields=($(echo $j | tr " " "\n"))
                		for h in "${fields[@]}"
				do
					let counter=$counter+1
					if [ $counter -lt 12 ]
					then
						echo "<td>"
						echo $h
						echo "</td>"
					fi
				done
				echo "</tr>" 		
			done		

echo -e "		</table>
		<br><br>


		<form action="process.sh" method="post">
			<p>Process ID: <input type="number" name="pid" min="0" required> <input type="submit" value="Manage"> </p>
		</form>

		<br><br>
		<a href=menu.sh>Return</a>
		</body>
	</html>
"
