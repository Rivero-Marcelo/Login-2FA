FROM php:8.1.11-apache
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
RUN docker-php-ext-configure opcache --enable-opcache && \
    docker-php-ext-install pdo pdo_mysql

RUN apt-get update && apt-get upgrade -y
RUN a2enmod rewrite headers
RUN service apache2 restart

ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf





#RUN apk add  nodejs \
 #   && apk add npm \
  #  && npm install -g npm 


COPY --from=composer/composer /usr/bin/composer /usr/bin/composer

EXPOSE 80