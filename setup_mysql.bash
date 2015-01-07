#!/bin/bash
aptitude install -y mysql-server
cp /vagrant/server-conf/my.cnf /etc/mysql/my.cnf
service mysql restart
mysql -uroot -psunrise -e 'CREATE DATABASE sunrise CHARACTER SET utf8 COLLATE utf8_general_ci'
mysql -uroot -psunrise -e 'CREATE DATABASE sunrise_test CHARACTER SET utf8 COLLATE utf8_general_ci'
