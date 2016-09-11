# Crossover Test

Scripts to setup Icinga web on a Ubuntu 14.04 virtual machine and run two docker containers with Apache HTTP Server and MySQL

Instructions:
1. Edit setdebconfselections.sh to set the passwords for the MySQL root user and the icingaadmin user. The default mysql and icingaadmin passwords are 'password'.
2. Run setupserver.sh
3. When setupserver.sh is complete please:
	* Run 'aws configure' to setup your AWS credentials for the S3 bucket where the logs are going to be stored
	* Rdit ~/scripts/logbackup.sh with the name of your S3 bucket"
