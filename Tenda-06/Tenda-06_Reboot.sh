#!/bin/bash

IP="192.168.178.2"
USER="admin"
PASS=`echo -n "password1234" | base64`

curl 'http://'$IP'/login/Auth' \
  -H 'Cookie: user='$USER'' \
  -H 'Origin: http://'$IP'' \
  -H 'Referer: http://'$IP'/login.html' \
  --data-raw 'username='$USER'&password='$PASS'&country=US&timeZone=7&time=' \
  --compressed \
  --insecure ;
curl 'http://'$IP'/goform/setSysReboot' \
  -H 'Cookie: user='$USER'' \
  -H 'Origin: http://'$IP'' \
  -H 'Referer: http://'$IP'/system_config.html' \
  --data-raw 'action=reboot' \
  --compressed \
  --insecure 
