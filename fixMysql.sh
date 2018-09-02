#!/bin/sh
mkdir -p /var/run/mysqld/; 
touch /var/run/mysqld/mysqld.pid; 
touch /var/run/mysqld/mysqld.sock; 
chown mysql:mysql -R /var/run/mysqld; 
service mysql restart; 
