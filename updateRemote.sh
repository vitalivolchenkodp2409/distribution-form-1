#!/bin/sh
if [ $# -eq 0 ] ; then
    echo 'Please enter a branch name'
    exit 1
fi
echo $1
branch=$1;
gitup $branch "update";
ssh -t root@poster.projectoblio.com "cd distribution-form; ./localUpdate.sh $branch";
