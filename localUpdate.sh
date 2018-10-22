#!/bin/sh
if [ $# -eq 0 ] ; then
    echo 'Please enter a branch name'
    exit 1
fi
dbuser=root
dbpass=anyPassword
dbname=msf
dbhost=drive.projectoblio.com
folderName=distribution-form
branch=$1;
git fetch;
echo "wtf1";
git pull origin $branch;
echo "wtf2";
rm -rf /var/www/laravel/database/migrations/*; 
rsync -ra ./laravel/* /var/www/laravel/
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
   		mysql -u$dbuser -p$dbpass -h$dbhost -e "drop database $dbname;" 
		mysql -u$dbuser -p$dbpass -h$dbhost -e "create database $dbname;" 
	    	#mysql -u$dbuser -p$dbpass -h$dbhost $dbname < /root/distribution-form/backupDatabases/databaseBackup1.sql;
	fi
fi
php artisan route:clear;
php artisan route:list;
~/$folderName/migrateAll.py;
#php artisan migrate; 
#php artisan serve --host "https://distribution.projectoblio.com"
