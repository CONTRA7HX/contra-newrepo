#!/bin/bash

<<info 
this is shell script will take periodic backups

eg. 
./autobackup.sh <source> <dest>
src /home/ubuntu/scripts
dest /home/ubuntu/backups
info

src=$1
dest=$2

timestamp=$( date '+ %y-%m-%d-%H-%M')

zip -r  "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://contra-backup
echo "	BACKUP COMPLETED"


