## Background
Dockers are basically mini VPS that you can run on any program. The Docker in this Repo runs an Ubuntu 16.04 instance. To rebuild (i.e. reset the instance), run "docker build . -t distribition".

## Installation
1. Install Docker on any OS (Windows, Mac, Ubuntu, etc)

2. Inside this directory, with root priviledges "docker build . -t distribution";

3. Run ./console.sh to access this docker container's Ubuntu 16.04 console with everything installed. Run ./installInsideDocker.sh. This has minimal interaction, the only interaction is creating mysql database. You should set the root password to "y78tyutftret". 

4. Your website will run on localhost:8000. Go to localhost:8000/phpmyadmin and use password "y78tyutftret". Create a database called "msf" with collection "utf8_unicode_ci".

5. Any files in the cloned repo's ./laravel/ directory (that is, any files you edit from the Github clone, even on Windows) should immediately update in the docker's /var/www/laravel folder. Changes to any other file inside the docker will be lost at rebuild. 


## Adding SSL 

If you have a domain name connected to your computer, first edit the "installCerts.sh" command to provide your domain and emails. Then run /distribution-form/installCerts.sh

## Running on port 80
Modify ./console.sh to map port 80 to port 80, instead of mapping port 80 to port 8000. 

## More details

The docker loads the directory you cloned this Github into into its /var/www/laravel folder. This means that any changes you make to wherever you cloned or pulled this git will carryover into the Docker. It also COPIES this github folder into a /distribution-form folder. This acts as a "backup" of sorts that won't have any changes you make in the /var/www/laravel folder. 
