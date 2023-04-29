#!/bin/bash

sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start


mysql -e "create database zack;"
mysql -e "create user 'zait-sli'@'%';"
mysql -e "grant all privileges on zack.* to 'zait-sli'@'%';"
mysql -e "alter user 'root'@'localhost' identified by '0000';"
mysql -e "flush privileges;"


mysqld