FROM richarvey/nginx-php-fpm:stable
MAINTAINER Pavlo Matviienko <shturman.p@gmail.com>

RUN unlink /etc/nginx/sites-enabled/default.conf

ADD . /var/www
ADD ./vagrant/nginx/hosts/nginx-site.conf etc/nginx/sites-enabled/nginx-site.conf


VOLUME /var/www