#!/bin/sh
#docker build . -t distribution
docker stop distributionContainer; 
docker rm distributionContainer; 
docker run --publish 8000:80 --publish=3001:3001 --publish=443:443 --publish=3389:3389 --publish=8080:8080 --publish=3000:3000 -v $PWD/:/var/www/  -dit --name distributionContainer distribution:latest bash ;
docker exec -it distributionContainer /bin/bash -c "service mysql start";
