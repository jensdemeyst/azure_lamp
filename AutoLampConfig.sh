# !/bin/bash
# Author: Detemmerman Thomas | student HoGent
# Group: 01

echo "start installing http"

sudo yum install -y httpd

echo "start installing php"

sudo yum install -y php

echo "start installing php mysqli"

sudo yum install -y php-mysql

echo "install mariadb-client"

sudo yum install -y mariadb

echo "install mariadb server version"

sudo yum install -y mariadb-server

echo "configuring firewall"

sudo firewall-cmd --permanent --zone=public --add-service=http
sudo firewall-cmd --permanent --zone=public --add-service=https

echo "start http and mariadb"

sudo systemctl start httpd
sudo systemctl start mariadb

echo "creating index.php testfile"

mv index.php /var/www/html

