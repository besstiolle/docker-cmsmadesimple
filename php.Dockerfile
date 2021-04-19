ARG PHP_VERSION
FROM php:${PHP_VERSION}-fpm-alpine
RUN apk add --no-cache libpng libpng-dev libressl-dev \
    && docker-php-ext-install mysqli gd phar \
    && apk del libpng-dev libressl-dev
