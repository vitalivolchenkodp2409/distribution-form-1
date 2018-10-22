#!/usr/bin/python
import os;
import sys;
thisdir = sys.path[0];
print(thisdir);
migrations = os.listdir(thisdir+"/laravel/database/migrations/");
os.system("cd /var/www/laravel; php artisan migrate:install");

print(migrations);
for m in migrations:
	print("Running command 'php artisan migrate:specific ./database/migrations/"+m+" -n'  from inside /var/www/laravel/ folder");
	os.system("cd /var/www/laravel; php artisan migrate:specific ./database/migrations/"+m+" -vvv;");
for m in migrations:
	print("Running command 'php artisan migrate:specific ./database/migrations/"+m+" -n'  from inside /var/www/laravel/ folder");
	os.system("cd /var/www/laravel; php artisan migrate:specific ./database/migrations/"+m+" -vvv;");
