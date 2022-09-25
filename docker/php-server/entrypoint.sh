#!/bin/bash

# remove existing vhosts
rm -rf /etc/apache2/sites-enabled/*

# symlink vhost config
ln -s /home/cfg/apache/project-vhost.conf /etc/apache2/sites-enabled/project-vhost.conf

# symlink project php.ini
ln -s /home/cfg/php/project-php.ini /etc/php/7.4/apache2/conf.d/9999-project-php.ini

# enable ssl
a2enmod ssl

# last call
/usr/sbin/apache2ctl -DFOREGROUND