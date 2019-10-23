#!/bin/bash
echo "enable IMAP for php"
php5enmod imap
echo "Setting write permissions to files"
source /permissions.sh
echo "Starting apache...."
echo "---------------------------------------------------------------"
echo "Now Visit http://localhost:8003"
echo "---------------------------------------------------------------"
/usr/sbin/apache2ctl -D FOREGROUND
echo "All done"
