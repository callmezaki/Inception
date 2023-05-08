#!/bin/bash


curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
chmod +x wp-cli.phar 
mv wp-cli.phar /usr/local/bin/wp
mkdir -p /run/php
mkdir -p /var/www/html
cd /var/www/html

wp core download --allow-root --insecure 
wp config create --dbname=zack --dbuser=zait-sli --dbpass=12345 --dbhost=mariadb --allow-root
wp core install --url=127.0.0.1 --title=Inception --admin_user=superzack --admin_email=zait-sli@student.1337.ma --skip-email --allow-root
wp user create zack zakariae.1234@gmail.com --role=author --user_pass=01234 --allow-root

exec "$@"