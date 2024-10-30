# Sử dụng PHP 8.0 FPM
FROM php:8.0-fpm

# Cài đặt các tiện ích cơ bản
RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    git \
    curl \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && docker-php-ext-install pdo pdo_mysql mbstring zip exif pcntl bcmath

# Cài đặt Composer
COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer

# Thiết lập thư mục làm việc
WORKDIR /var/www

# Copy mã nguồn vào container
COPY . .

# Cấp quyền cho thư mục storage và bootstrap/cache
RUN chown -R www-data:www-data /var/www \
    && chmod -R 755 /var/www/storage \
    && chmod -R 755 /var/www/bootstrap/cache

# Thiết lập người dùng www-data (người dùng mặc định của Nginx/Apache)
USER www-data

# Chạy Composer để cài đặt các phụ thuộc của Laravel
RUN composer install --no-scripts --no-autoloader

# Expose cổng 9000 cho PHP-FPM
EXPOSE 9000

# Lệnh mặc định để chạy PHP-FPM
CMD ["php-fpm"]
