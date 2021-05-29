#mysql_install_db --user=mysql --datadir="/var/lib/mysql"
#openrc
#touch /run/openrc/softlevel
#rc-service mariadb start
#sh create_db.sh
#rc-service mariadb stop
#mysqld_safe --datadir="/var/lib/mysql"
openrc default
/etc/init.d/mariadb setup
rc-service mariadb start
mysql -u root mysql < createdb.sql
#mysql -u root rem < rem.sql
rc-service mariadb stop
/usr/bin/mysqld_safe --datadir='/var/lib/mysql'