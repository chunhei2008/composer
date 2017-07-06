FROM composer

RUN docker-php-ext-install bcmath
RUN apk add libfreetype-dev \
        libjpeg-dev \
        libmcrypt-dev \
        libpng-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd


