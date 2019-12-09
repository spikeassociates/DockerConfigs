# Docker file for CoreBOS

FROM ubuntu:14.04

EXPOSE 80

# Install required packages

RUN apt-get update && \
apt-get dist-upgrade -y && \
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
ca-certificates \
curl \
mysql-client \
php5 \
php5-cli \
php5-curl \
php5-gd \
php5-mysql \
php5-readline \
php-pear \
php5-imap \
apache2 \
dos2unix \
&& rm -rf /var/lib/apt/lists/*

COPY apache/apache2.conf /etc/apache2/apache2.conf

# Configure apache
RUN mkdir -p /var/www/corebos
RUN sed -i.bak 's|DocumentRoot /var/www/html|DocumentRoot /var/www/corebos|g' /etc/apache2/sites-available/000-default.conf

#Add php.ini
COPY php/php.ini /etc/php5/apache2/php.ini

#Give write permissions to specific files
COPY permissions.sh /permissions.sh
RUN dos2unix /permissions.sh

#Copy Entrypoint file inside corebos image
COPY init.sh /init.sh
RUN dos2unix /init.sh

RUN chmod +x /*.sh
RUN apt-get --purge remove -y dos2unix && rm -rf /var/lib/apt/lists/*

CMD ["/init.sh"]

