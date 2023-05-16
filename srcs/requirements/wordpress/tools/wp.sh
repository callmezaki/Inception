#!/bin/bash


curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
mkdir -p /run/php
mkdir -p /var/www/html
cd /var/www/html

if  [ ! -f "/var/www/html/wp-config.php" ]; then

	wp core download --allow-root --insecure
	wp config create --dbname=$DB_NAME --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --allow-root
	wp core install --url=127.0.0.1 --title=Inception --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD  --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
	wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PASSWORD --allow-root
fi

exec "$@"
