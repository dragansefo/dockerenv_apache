#/bin/bash

yum -y install \
    php \
    php-common \
    php-cli \
    php-ldap \
    php-mbstring \
    php-pdo \
    php-soap \
    php-bcmath \
    php-intl \
    php-pear \
    php-pecl-apc \
    php-mcrypt \
    php-mysql \
    php-devel \
    php-gd \
    php-pecl-memcache \
    php-pspell \
    php-snmp \
    php-xmlrpc \
    php-xml       

# ImageMagick
yum -y install \
    gcc \
    ImageMagick \
    ImageMagick-devel

/usr/bin/pecl install imagick

echo "extension=imagick.so" > /etc/php.d/imagick.ini