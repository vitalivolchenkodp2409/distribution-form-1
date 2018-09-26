#!/bin/sh
if [ $# -eq 0 ] ; then
    echo 'Please enter a branch name'
    exit 1
fi

branch=$1;
git fetch;
git reset --hard origin/master;
git pull origin $branch;
rsync -ravv ./laravel/* /var/www/laravel/
cp ./laravel/.* /var/www/laravel/
cd /var/www/; 
chown -R :www-data /var/www/laravel; 
chmod -R 775 /var/www/laravel/storage; 
chmod -R 775 /var/www/laravel/bootstrap/cache; 
chmod -R +777 /var/www/laravel/*
cd laravel;

if [ $# -eq 2 ] || [ $# -eq 3 ] ; then
rm -rf vendor;
composer dump-autoload;
php artisan clear-compiled; 
rm -rf bootstrap/cache/packages.php;
rm -rf bootstrap/cache/services.php;
php artisan route:cache;
composer install --no-scripts;
composer update; 
php artisan key:generate;

chown -R :www-data /var/www/laravel; 
chmod -R 775 /var/www/laravel/storage; 
chmod -R 775 /var/www/laravel/bootstrap/cache; 
	if [ $# -eq 3 ] ; then

    		echo 'Restoring mysql backup'
   		mysql -uroot -panyPassword -e "drop database msf;" 
		mysql -uroot -panyPassword -e "create database msf;" 
	    	mysql -uroot -panyPassword msf < /root/distribution-form/backupDatabases/databaseBackup1.sql;
	fi
fi

php artisan migrate; 
php artisan serve --host "https://distribution.projectoblio.com"
