#!/bin/sh
if [ $# -eq 0 ] ; then
    echo 'Please enter a branch name'
    exit 1
fi

branch=$1;
git fetch all;
git reset --hard $branch/master;
git pull;
rsync -ravv ./laravel/* /var/www/laravel/
cd /var/www/; 
chown -R :www-data /var/www/laravel; 
chmod -R 775 /var/www/laravel/storage; 
chmod -R 775 /var/www/laravel/bootstrap/cache; 
cd larvael;
rm -rf vendor;
composer install --no-dev
