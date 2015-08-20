FROM assupport/nginx-tomcat:v2.0
MAINTAINER AS-Support <as-support[at]intelligrape[dot]com>
ADD default /etc/nginx/sites-enabled/default
ADD startUp.sh /root/startUp.sh
RUN chmod +x /root/startUp.sh
VOLUME /var/log/nginx
CMD ["/root/startUp.sh"]
