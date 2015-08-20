
FROM assupport/tomcat:v1.0
MAINTAINER AS-Support <as-support[at]intelligrape[DOT]com>
EXPOSE 8080
#RUN rm -rf /root/tomcat7/webapps/*
RUN wget https://s3-ap-southeast-1.amazonaws.com/aswan-grails-uat/warfiles/rest.war -O /root/tomcat7/webapps/ROOT.war
CMD ["/root/tomcat7/bin/catalina.sh","run"]
