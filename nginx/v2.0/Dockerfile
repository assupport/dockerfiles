FROM assupport/nginx:v2.0
MAINTAINER AS-Support <as-support[at]intelligrape[dot]com>
VOLUME /var/log/nginx
#Pass HOSTNAME as container anme to be linked
#Pass PORT as port used to foward requests
CMD ["/root/startUp.sh","HOSTNAME","PORT"]
