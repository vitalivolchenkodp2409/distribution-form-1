
## Installation on an Ubuntu 16.04 VPS / virtual box


1. cd /; apt-get update; apt-get upgrade -y; apt-get install git -y; git clone https://github.com/Project-Oblio/distribution-form.git; nano +39 dist*/nginx*; 

2. inside the file, keep "server_name 127.0.0.1" for localhost/docker. Change to  "server_name {{public-ip-address}}" or "server_name {{domain name}}" if running on a VPS.

3. Run: /distribution-form/mysqld.sh; /distribution-form/installInsideDocker.sh; 

4. Go to http://{{server_name}}/phpmyadmin. user "root" password "y78tyutftret". Create a database called "msf" with collection "utf8_unicode_ci". Then, cd /var/www/laravel/; php artisan migrate

### Adding SSL to VPS

If you have a domain name connected to your VPS, first edit the "installCerts.sh" command to provide your domain and emails. Then run /distribution-form/installCerts.sh

### Adding OAuth2.0 token
1. Create an account called admin@projectoblio.com

2. You will now be able to 

### Adding Google Auth login, recaptcha tokens, Twilio APIs...
1. Check the ./laravel/.env file for Google Auth and Recaptcha tokens

2. Twilio API key is located ? 

## Installation on a Docker (Does not work currently due to systemctl problems..)
### Background 
Dockers are basically mini VPS that you can run on any OS (windows, mac, etc). The Docker in this Repo runs an Ubuntu 16.04 instance. To rebuild (i.e. reset the instance), run ./build.sh. However after doing a bunch of crap i have learned docker does not support systemctl commands, making applying phpmyadmin more difficult than just using a VPS. 
1. Install Docker on any OS (Windows, Mac, Ubuntu, etc)

2. Clone the Github repo. Inside its directory, with root priviledges "./build.sh"; Please wait for it to install, if it looks like it has stopped for 4 minutes that is normal.

3. Run ./console.sh to access this docker container's Ubuntu 16.04 console with everything installed.

4. Your website will run on localhost:8000. Go to localhost:8000/phpmyadmin and use password "y78tyutftret". Create a database called "msf" with collection "utf8_unicode_ci". Then, cd /var/www/laravel/; php artisan migrate

5. Any files in the cloned repo's ./laravel/ directory (that is, any files you edit from the Github clone, even on Windows) should immediately update in the docker's /var/www/laravel folder. Changes to any other file inside the docker will be lost at rebuild. 

6. Keep in mind any changes outside the /var/www/laravel folder won't carry over to the new instance (this is both a good thing and a bad thing). For modiifications outside the laravel folder (e.g installing a package), add the commands the ./installInsideDocker.sh script to automatically install them each time you rebuild. 

### Docker notes:  Running on port 80
Modify ./console.sh to map port 80 to port 80, instead of mapping port 80 to port 8000. 

### Docker notes: Immediate changes

The docker loads the directory you cloned this Github into into its /var/www/laravel folder. This means that any changes you make to wherever you cloned or pulled this git will carryover into the Docker. It also COPIES this github folder into a /distribution-form folder. This acts as a "backup" of sorts that won't have any changes you make in the /var/www/laravel folder. 
