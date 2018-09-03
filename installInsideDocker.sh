#!/bin/sh
mysqlpassword=y78tyutftret; 
apt-get update;
apt-get upgrade -y;
apt-get install -y --no-install-recommends apt-utils; 
apt-get install  nginx software-properties-common -y; 
apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server 
service mysql start; 
#apt-get install -y mysql-server;
#mysql_secure_installation; 
mkdir -p /var/run/mysqld/; 
touch /var/run/mysqld/mysqld.pid; 
touch /var/run/mysqld/mysqld.sock; 
chown mysql:mysql -R /var/run/mysqld; 
#service mysql restart; 

mysqladmin -u root password $mysqlpassword; 

add-apt-repository ppa:ondrej/php -y; 
apt-get update --allow-unauthenticated; 
apt-get install php7.2-fpm php7.2-common php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-gd php7.2-xml php7.2-intl php7.2-mysql php7.2-cli php7.2-zip php7.2-curl nano -y --allow-unauthenticated; 




cp nginx-default /etc/nginx/sites-available/default; 
systemctl reload nginx; 
systemctl restart php7.2-fpm.service;
apt-get update --allow-unauthenticated; 
apt-get install curl git -y --allow-unauthenticated;
apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -yq --allow-unauthenticated install phpmyadmin 
mkdir -p /var/www/laravel; 
mkdir -p /var/www/laravel/storage; 
mkdir -p /var/www/laravel/bootstrap; 
mkdir -p /var/www/laravel/bootstrap/cache;
#cd /distribution-form;
#cp -R * /var/www/laravel/
service nginx restart; 
cd ~;
curl -sS  https://getcomposer.org/installer | php;
mv composer.phar /usr/local/bin/composer; 
cd /var; 
mkdir repo && cd repo; 
mkdir site.git && cd site.git; 
git init –bare; 
printf "#!/bin/sh \n git --work-tree =/var/www/laravel --git-dir=/var/repo/site.git checkout –f" >> post-receive;
chmod +x post-receive; 

# laravel install
cd /var/www/laravel; 
cp -r /distribution-form/laravel/* ./; 
chown -R :www-data /var/www/laravel; 
chmod -R 775 /var/www/laravel/storage; 
chmod -R 775 /var/www/laravel/bootstrap/cache;
composer install --no-dev; 
php artisan key:generate;



#./mysql_install.sh


