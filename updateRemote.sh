#!/bin/sh
gitup "update";
ssh -t root@poster.projectoblio.com "cd laravel-irt; ./localUpdate.sh";
