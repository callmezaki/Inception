#!/bin/bash

sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

if [ ! -d "/var/lib/mysql/$DB_NAME" ]; then

 
    mysql -u root -e "create database $DB_NAME;"
    mysql -u root -e "create user '$MYSQL_USER' identified by '$MYSQL_PASSWORD';"
    mysql -u root -e "grant all privileges on $DB_NAME.* to '$MYSQL_USER';"
    mysql -u root -e "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';"
 
fi

kill $(cat /var/run/mysqld/mysqld.pid)

exec "$@"
