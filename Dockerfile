FROM composer:latest

RUN apt-get update && apt-get install -y \
    	libbz2-dev \
	zlib1g-dev \
	libmcrypt-dev \
        libwebp-dev \
        libjpeg-dev \
        libpng-dev \
        libz-dev \
        libXpm-dev \
        freetype* \
        && docker-php-ext-configure gd --with-freetype-dir --with-webp-dir --with-jpeg-dir --with-png-dir \
        && docker-php-ext-install -j$(nproc) bz2 mcrypt mysqli pdo_mysql sockets zip gd bcmath

