FROM debian:buster-slim

RUN apt-get update && apt-get install -y apache2
RUN a2enmod proxy_fcgi
RUN a2enmod rewrite

COPY ./conf/httpd/000-default.conf /etc/apache2/sites-available/000-default.conf

CMD /usr/sbin/apache2ctl -D FOREGROUND