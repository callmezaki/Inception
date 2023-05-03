#!/bin/bash

service mysql start

sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf

if [ ! -d "/var/lib/mysql/zack" ]; then

    mysql -u root -e "create database zack;"
    mysql -u root -e "create user 'zait-sli'@'%' identified by '12345';"
    mysql -u root -e "grant all privileges on zack.* to 'zait-sli'@'%';"
    mysql -u root -e "alter user 'root'@'localhost' identified by '0000';"

fi

kill $(pidof mysqld)


mysqld