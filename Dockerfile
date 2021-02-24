FROM ubuntu:18.04
MAINTAINER everchicas
RUN apt-get update
RUN apt-get install -y apache2
RUN rm /var/www/html/*
COPY index.html /var/www/html/
COPY style /var/www/html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 8080