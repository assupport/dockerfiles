#!/bin/bash
set -x
HOSTNAME=$1
PORT=$2
sed -i "s/HOSTNAME:PORT/$HOSTNAME:$PORT/" /etc/nginx/sites-enabled/default
/usr/sbin/nginx
