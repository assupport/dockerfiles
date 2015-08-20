#!/bin/bash
source /root/.usersetting
AWS="/usr/local/bin/aws"
ECHO="/bin/echo"
$AWS s3 cp s3://aswan-grails-uat/warfiles/$1.war /root/tomcat7/webapps/ROOT.war
$ECHO grails.moduleToBuild=\"$1\" > /root/american-swan-config.groovy
/root/tomcat7/bin/catalina.sh start
tail -1000f ~/tomcat7/logs/catalina.out
