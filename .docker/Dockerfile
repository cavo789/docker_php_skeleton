FROM composer:latest AS composer

FROM php:8.1-apache

USER root

COPY --from=composer /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
    curl \
    libonig-dev \
    libpng-dev \
    libxml2-dev \
    libzip-dev \
    unzip \
    zip \
    zlib1g-dev \
    && docker-php-ext-install zip \
    && docker-php-source delete

COPY vhost.conf /etc/apache2/sites-available/000-default.conf

RUN chown -R www-data:www-data /var/www/html; \
    a2enmod rewrite
