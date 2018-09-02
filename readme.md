## Installation
1. Install Docker on any OS (Windows, Mac, Ubuntu, etc)

2. Inside this directory, with root priviliedges "docker build . -t distribution";

3. Run ./console.sh to access an Ubuntu 16.04 console with everything installed. Your website will run on localhost:8000. No VPS is needed. To rebuild (i.e. reset the instance), run docker build . -t distribition. Any files in this directory should immediately update in the docker's /var/www/laravel folder. Changes to any other file inside the docker will be lost at rebuild. 

4. Run /distribution-form/fixMysql.sh to fix the Mysql database? currently doesnt work. 

If you have a domain name connected to your computer, first edit the "installCerts.sh" command to provide your domain and emails. Then run /distribution-form/installCerts.sh

## More details

The docker loads the directory you cloned this Github into into its /var/www/laravel folder. This means that any changes you make to wherever you cloned or pulled this git will carryover into the Docker. It also COPIES this github folder into a /distribution-form folder. This acts as a "backup" of sorts that won't have any changes you make in the /var/www/laravel folder. 
