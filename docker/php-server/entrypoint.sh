#!/bin/bash

# remove existing vhosts
rm -rf /etc/apache2/sites-enabled/*

# symlink vhost config
ln -s /home/cfg/apache/project-vhost.conf /etc/apache2/sites-enabled/project-vhost.conf

# enable ssl
a2enmod ssl

# last call
/usr/sbin/apache2ctl -DFOREGROUND