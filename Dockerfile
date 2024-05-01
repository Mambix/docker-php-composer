FROM php:8.1.28-zts
LABEL maintainer "ledi.mambix@gmail.com"

#install all the system dependencies and enable PHP modules
RUN apt-get update && apt-get install -y \
    git \
    zip \
	&& rm -r /var/lib/apt/lists/*

#install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer
