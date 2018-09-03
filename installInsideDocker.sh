#!/bin/sh
mysqlpassword=y78tyutftret; 
apt-get update; 
apt-get install nginx -y; 
#mysqladmin -u root password $mysqlpassword; 

apt-get update; 
add-apt-repository ppa:ondrej/php -y; 
apt-get update --allow-unauthenticated; 
apt-get install php7.2-fpm php7.2-common php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-gd php7.2-xml php7.2-intl php7.2-mysql php7.2-cli php7.2-zip php7.2-curl nano -y --allow-unauthenticated; 

cp /distribution-form/nginx-default /etc/nginx/sites-available/default; 
systemctl reload nginx; 
systemctl restart php7.2-fpm.service;
apt-get update --allow-unauthenticated; 
apt-get install curl git -y --allow-unauthenticated;
apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -yq --allow-unauthenticated install phpmyadmin; 
mkdir -p /var/www/laravel; 
mkdir -p /var/www/laravel/storage; 
mkdir -p /var/www/laravel/bootstrap; 
mkdir -p /var/www/laravel/bootstrap/cache;
#cd /distribution-form;
#cp -R * /var/www/laravel/
service nginx restart; 


echo 'command dissociated'; 

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
cd /var/www; 
cp -r /distribution-form/laravel ./; 
cd laravel; 
chown -R :www-data /var/www/laravel; 
chmod -R 775 /var/www/laravel/storage; 
chmod -R 775 /var/www/laravel/bootstrap/cache;
composer install --no-dev; 
php artisan key:generate;



#./mysql_install.sh


