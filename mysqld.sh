#!/bin/sh
mysqlpassword=y78tyutftret;
apt-get update; apt-get upgrade -y; apt-get install -y --no-install-recommends apt-utils; apt-get install software-properties-common -y;  apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server;  service mysql stop; mkdir -p /var/run/mysqld/; touch /var/run/mysqld/mysqld.pid; touch /var/run/mysqld/mysqld.sock; chown mysql:mysql -R /var/run/mysqld; nohup mysqld_safe >myscript.log 2>&1 & 
sleep 10s; 
mysql -u root mysql -e "update user set authentication_string=password(\"$mysqlpassword\") where user='root';"
/etc/init.d/mysql restart;

echo "Please wait for command to complete... Mysql is fixed, just wait a few more minutes okay";
