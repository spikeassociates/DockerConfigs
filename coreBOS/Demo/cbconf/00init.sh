mysql -u root -prootpass mysql -e 'CREATE DATABASE mbdemo DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;'
mysql -u root -prootpass mbdemo < /docker-entrypoint-initdb.d/mbdemo
