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

# Solr
yum -y install \
    curl-devel \
    libxml2-devel

yes '' | pecl install -f solr

echo "extension=solr.so" > /etc/php.d/solr.ini

# Drush
pear channel-discover pear.drush.org
pear install drush/drush
pear install --alldeps Console_Table

# Xdebug
pecl install xdebug

