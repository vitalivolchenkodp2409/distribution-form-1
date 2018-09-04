
## Installation on an Ubuntu 16.04 VPS / virtual box


1. ./install.sh 

2. inside the file, keep "server_name 127.0.0.1" for localhost/docker. Change to  "server_name {{public-ip-address}}" or "server_name {{domain name}}" if running on a VPS.


3. Make the mysql password this: y78tyutftret

4. Go to http://{{server_name}}/phpmyadmin. user "root" password "y78tyutftret". Create a database called "msf" with collection "utf8_unicode_ci". Then, cd /var/www/laravel/; php artisan migrate

### Adding SSL to VPS

If you have a domain name connected to your VPS, first edit the "installCerts.sh" command to provide your domain and emails. Then run ./installCerts.sh

### Adding OAuth2.0 token
1. Create an account called admin@projectoblio.com

2. You will now be able to add OAuth2.0 priviledges.

### Adding Google Auth login, recaptcha tokens, Twilio APIs...
1. Check the ./laravel/.env file for Google Auth and Recaptcha tokens

2. Twilio API key is located ? 

