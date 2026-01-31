#!/bin/bash

<<info
script to backup files every 2 minutes
info

#./backup.sh src dest

src=$1
dest=$2

timestamp=$(date "+%Y-%m-%d_%H-%M")

/usr/bin/zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://my-web-server-bucket-dev

echo "BACKUP COMPLETED & UPLOADED TO S3"
