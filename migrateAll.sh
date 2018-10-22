#!/usr/bin/python
import os;
migrations = os.listdir("./laravel/database/migrations/");
for m in migrations:
	print("Running command php artisan migrate:specific ./database/migrations/",m);
	os.system("cd laravel; php artisan migrate:specific ./database/migrations/"+m);
