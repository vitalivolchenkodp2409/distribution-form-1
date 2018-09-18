#!/bin/sh
if [ $# -eq 0 ] ; then
    echo 'Please enter a branch name'
    exit 1
fi
if [ $# -eq 1 ] ; then
    echo 'Not updating databases'
	echo $1
	branch=$1;
	gitup $branch "update";
	ssh -t root@distribution.projectoblio.com "cd distribution-form; ./localUpdate.sh $branch";
fi

if [ $# -eq 2 ] ; then
    echo 'Going to full install'
	echo $1
	branch=$1;
	gitup $branch "update";
	ssh -t root@distribution.projectoblio.com "cd distribution-form; ./localUpdate.sh $branch something";    
fi

if [ $# -eq 3 ] ; then
    echo 'Going to full install and reset databases'
        echo $1
        branch=$1;
        gitup $branch "update";
        ssh -t root@distribution.projectoblio.com "cd distribution-form; ./localUpdate.sh $branch something something2"
fi



