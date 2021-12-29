#!/bin/bash

while IFS=":" read -r usuario _
do
   echo "crontab del usuario ${usuario}:"
   sudo crontab -l -u "$usuario"
done < /etc/passwd
