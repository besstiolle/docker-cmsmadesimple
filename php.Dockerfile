ARG PHP_VERSION
FROM php:${PHP_VERSION}-fpm-alpine
RUN apk add --no-cache libpng libpng-dev && docker-php-ext-install mysqli gd && apk del libpng-dev
