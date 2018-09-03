#!/bin/sh
docker build . -t distribution; 
docker stop distributionContainer; 
docker rm distributionContainer; 
docker run --publish 8000:80 --publish=3001:3001 --publish=443:443 --publish=3389:3389 --publish=8080:8080 --publish=3000:3000 -v $PWD/:/var/www/  -dit --name distributionContainer distribution:latest bash ;
echo "here"
docker exec distributionContainer /bin/bash -c "apt-get update; apt-get upgrade -y; apt-get install -y --no-install-recommends apt-utils; apt-get install software-properties-common -y;  apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server;  service mysql stop; mkdir -p /var/run/mysqld/; touch /var/run/mysqld/mysqld.pid; touch /var/run/mysqld/mysqld.sock; chown mysql:mysql -R /var/run/mysqld; mysqld_safe; nohup ./mysqld.sh >myscript.log 2>&1 & " & 
docker exec -it distributionContainer /bin/bash -c "sleep 7m; /distribution-form/installInsideDocker.sh;";
