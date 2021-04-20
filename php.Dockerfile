ARG PHP_VERSION
FROM php:${PHP_VERSION}-fpm-alpine
COPY ./conf/php/php-docker.ini /usr/local/etc/php/conf.d/php-docker.ini
RUN apk add --no-cache \
        libpng \
        libpng-dev \
        libjpeg-turbo-dev \
        libressl-dev \
    && docker-php-ext-install -j$(nproc) \
        mysqli \
        gd \
        phar \
    && apk del \
        libpng-dev \
        libressl-dev
