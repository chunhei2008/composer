FROM composer

RUN docker-php-ext-install bcmath
RUN docker-php-ext-install gd


