ARG PHP_VERSION
FROM php:${PHP_VERSION}-fpm-alpine
RUN docker-php-ext-install mysqli
