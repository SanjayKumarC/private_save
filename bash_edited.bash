#!/bin/bash


E_BADARGS=65
MYSQL=`which mysql`
DBname="gpp_$1"


#check if that DB is already present in mysql or not 

echo "show databases like 'DBname';" | mysql -u root -h10.179.3.203 -pQdE8CpHx7JC48d0

#write a return check of executed command... 

#If it is there then die here it self 

#else 

#crete that that database

-------------

Q1="CREATE DATABASE IF NOT EXISTS $DBname;"
SQL="${Q1}"
mysql -u root -h10.179.3.203 -pQdE8CpHx7JC48d -e "$SQL"

#write a return check of executed command... 


echo "DB Created";

-----------------------

mysql -u root -h10.179.3.203 -pQdE8CpHx7JC48d $DBname < afterprofileinst.sql;


#write a return check of executed command... 
echo "Data Import Completed";


> id=`mysql -uroot -ppwd -s -N -e "SELECT id FROM nagios.host WHERE name='$host'"`
> echo $id

#!/bin/bash


E_BADARGS=65
MYSQL=`which mysql`

DBname="gpp_$1"


echo "show databases like '$DBname';" | mysql -u root -h10.179.3.203 -pQdE8CpHx7JC48d0
