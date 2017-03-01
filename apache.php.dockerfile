FROM php:5.6-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev

RUN /usr/local/bin/docker-php-ext-install mysqli \
	&& docker-php-ext-install gd \
	&& a2enmod rewrite \
	&& a2enmod headers \
	&& a2enmod ssl
