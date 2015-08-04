FROM assupport/tomcat:v1.0
MAINTAINER AS-Support <as-support[at]intelligrape[DOT]com>
EXPOSE 8080
#RUN rm -rf /root/tomcat7/webapps/*
RUN wget https://s3-ap-southeast-1.amazonaws.com/aswan-grails-uat/ROOT.war -P /root/tomcat7/webapps/
CMD ["/root/tomcat7/bin/catalina.sh","run"]
