FROM php:8.2.0-fpm

RUN apt-get clean && apt-get update \
    &&  apt-get install -y --no-install-recommends \
        locales \
        apt-utils \
        git \
        libicu-dev \
        g++ \
        zip \
        libpng-dev \
        libxml2-dev \
        libzip-dev \
        libonig-dev \
        libxslt-dev \
        unzip \
        libpq-dev \
        nodejs \
        npm \
        wget \
        apt-transport-https \
        lsb-release \
        ca-certificates

# Install extensions
RUN docker-php-ext-install pdo_mysql
RUN apt-get install -y \
        libonig-dev \
    && docker-php-ext-install iconv mbstring
RUN apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

# install ldap extension
RUN apt-get update && apt-get install -y \
    libldap2-dev
RUN docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/
RUN docker-php-ext-install ldap bcmath

# Redis is installed, enable it
RUN pecl install redis \
    && docker-php-ext-enable redis

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Permission
RUN chown -R www:www /var/www

RUN usermod -s /bin/bash www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]

WORKDIR /var/www/
