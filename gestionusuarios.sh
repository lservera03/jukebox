#!/bin/bash


echo Content-type: text/html
echo


echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
        <html>
                <head>
                        <title>Gestion usuarios</title>
                </head>
                <body>
                <h1>Gestion usuarios</h1>
                <a href="adduser.sh">Crear usuario</a><br><br><br>
                <a href="deleteuser.sh">Eliminar usuario</a><br><br><br>
                <a href="menu.sh">RETURN</a>
                </body>
        </html>

"

