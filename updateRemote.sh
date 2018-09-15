#!/bin/sh
gitup "update";
ssh -t root@poster.projectoblio.com "cd distribution-form; ./localUpdate.sh";
