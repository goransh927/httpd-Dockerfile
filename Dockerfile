FROM centos:latest
MAINTAINER goransh@gt
RUN yum install httpd -y
COPY ./index.html /var/www/html
RUN chown apache:root /etc/httpd/logs /var/run/httpd
EXPOSE 8080
VOLUME /var/www/html 
CMD /usr/sbin/httpd -DFOREGROUND
USER root
