#!/bin/sh
if [ $# -eq 0 ] ; then
    echo 'Please enter a branch name'
    exit 1
fi

branch=$1;
git fetch;
#git reset --hard origin/master;
git pull origin $branch;
rsync -ravv ./laravel/* /var/www/laravel/
cd /var/www/; 
chown -R :www-data /var/www/laravel; 
chmod -R 775 /var/www/laravel/storage; 
chmod -R 775 /var/www/laravel/bootstrap/cache; 
cd laravel;
rm -rf vendor;
composer dump-autoload;
php artisan clear-compiled; 
rm -rf bootstrap/cache/packages.php;
rm -rf bootstrap/cache/services.php;
composer install --no-scripts
composer update; 
php artisan key:generate;
if [ $# -eq 2 ] ; then
    echo 'Updating mysql'
    mysql -uroot -py78tyutftret -e "drop database msf;" 
    mysql -uroot -py78tyutftret -e "create database msf;"
fi

php artisan migrate; 
php artisan serve --host "https://distribution.projectoblio.com"
