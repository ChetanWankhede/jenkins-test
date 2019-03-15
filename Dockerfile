FROM ubuntu:14.04

RUN apt-get update && apt-get install curl apache2 vim -y

COPY index.html /var/www/html/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl", "_DFORGROUND"]
