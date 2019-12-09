------------------------------------------------------
			   COREBOS DOCKER IMAGE 
------------------------------------------------------

Author : Albert Xhani
hacked by aalberici

Requirements 
---------------------
1. Install Docker Engine
Check Instructions at => https://docs.docker.com/engine/installation/linux/ubuntulinux/

2. Install Docker Compose
Check Instructions here => https://docs.docker.com/compose/install/

Installation
---------------------
To get Corebos Image running, cp into the project's root directory and run:
docker-compose up
You can access Corebos CRM at http://localhost:8003

Run With PhpMyAdmin
---------------------
To run CoreBOS with phpmyadmin run the next command instead:
docker-compose -f docker-compose.yml -f docker-compose.phpmyadmin.yml up

To Access phpmyamin visit http://localhost:8004
Default user : root
Default password : password

CoreBOS Credentials
----------------------
Usermane: 	admin
Password:	admin

Change Application's Ports
---------------------------
To change the ports of Docker Containers for CoreBOS and PhpMyAdmin modify docker-compose.yml and
docker-compose.phpmadmin.yml on "-ports:" section. WARNING: Do not modify the :80 part as that is the 
exposed inner port of container 

Useful Commands
----------------------
docker-compose down   =>	stops and destroys CoreBOS containers
docker-compose up -d  =>	Runs CoreBOS in detached mode
docker-compose logs   =>	Displays build and run logs of the Containers 
docker ps			  =>	Diplays docker running continers. With this command
							you can check if CoreBOS containers are running
docker images		  =>    displays docker images

For more information on docker and docker-compose commands check
https://docs.docker.com/engine/reference/commandline/
https://docs.docker.com/compose/reference/

Config Files
----------------------
Apache	=>	/docker/app/apache/apache2.conf
PHP		=>  /docker/app/php/php.ini
MYSQL	=>	/docker/mysql/conf.d/corebos.cnf