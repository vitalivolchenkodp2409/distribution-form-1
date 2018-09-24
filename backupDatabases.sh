#!/bin/sh
# Used to backup databases so that we can keep a common username/passwords for example users
# Can be used to create sample users with different arrows and karmas easier
if [ $# -eq 0 ] ; then
    echo 'Please enter a name-ending for the database'
    exit 1
fi

name=$1;
chmod 400 sshKey
echo "Saving database to databaseBackup$name.sql";
ssh -i "./sshKey" root@distribution.projectoblio.com "mysqldump -uroot -panyPassword msf > ~/databaseBackup$name.sql";
scp -i "./sshKey" root@distribution.projectoblio.com:~/databaseBackup$name.sql ./backupDatabases/
