#!/usr/bin/python
import os;
import sys;
thisdir = sys.path[0];
print(thisdir);
migrations = os.listdir(thisdir+"/laravel/database/migrations/");
print(migrations);
for m in migrations:
	print("Running command 'php artisan migrate:specific ./database/migrations/"+m+"'  from inside /var/www/laravel/ folder");
	os.system("cd /var/www/laravel; php artisan migrate:specific ./database/migrations/"+m);
