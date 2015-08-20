#!/bin/bash
#HOSTNAME=$1
#PORT=$2
#sed -i "s/HOSTNAME:PORT/$HOSTNAME:$PORT/" /etc/nginx/sites-enabled/default
/usr/sbin/nginx &
tail -f /var/log/nginx/access.log
