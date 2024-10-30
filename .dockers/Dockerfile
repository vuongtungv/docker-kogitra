FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    zip \
    vim \
    unzip \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    gnupg2

RUN docker-php-ext-install pdo pdo_mysql

# install ldap extension
RUN apt-get update && apt-get install -y \
    libldap2-dev
RUN docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/
RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg
RUN docker-php-ext-install ldap gd mbstring zip bcmath

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt -y install nodejs
RUN apt -y install gcc g++ make
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install yarn

# Composer install
RUN cd /usr/bin && curl -s http://getcomposer.org/installer | php && ln -s /usr/bin/composer.phar /usr/local/bin/composer

RUN apt-get update && apt-get install -y cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Configure cron
RUN touch /etc/crontab
RUN chmod 0644 /etc/crontab
RUN echo "* * * * * cd /var/www/admin && php artisan schedule:run >> /var/log/cron.log 2>&1" >> /etc/crontab
RUN crontab /etc/crontab


COPY . /var/www
WORKDIR /var/www

EXPOSE 9000
