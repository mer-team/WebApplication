#!/usr/bin/env bash

DBNAME=mer
DBUSER=user
DBPASSWD=123qwe

apt-get update
#automatically fill in the values prompted
debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASSWD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASSWD"

# install mysql
apt-get -y install mysql-server

mysql -uroot -p$DBPASSWD -e "create database $DBNAME"
mysql -uroot -p$DBPASSWD -e "grant all privileges on $DBNAME.* to '$DBUSER'@'%' identified by '$DBPASSWD'"
mysql -uroot -p123qwe -e "flush privileges"
cd /vagrant

# update mysql conf file to allow remote access to the db

sudo sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
sudo sed -i -e '$askip_name_resolve' /etc/mysql/mysql.conf.d/mysqld.cnf

sudo service mysql restart

