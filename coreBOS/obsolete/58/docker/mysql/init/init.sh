#!/bin/bash
/usr/bin/mysqld_safe &
sleep 5
mysql -u root -p password -e "CREATE DATABASE corebos580"
mysql -u root -p password corebos580 < /sql/corebos580.sql