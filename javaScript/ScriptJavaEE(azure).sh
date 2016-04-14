# !/bin/bash
# Author: De Meyst Jens | student HoGent
# Group: 01


echo "install java-1.8.0-openjdk"

sudo yum install -y java-1.8.0-openjdk

echo "install mariadb-client"

sudo yum install -y mariadb

echo "install mariadb server version"

sudo yum install -y mariadb-server

echo "install tomcat"

sudo yum install -y tomcat

echo "install openjdk-7-jdk"

sudo yum install -y openjdk-7-jdk

echo "configuring firewall"

sudo firewall-cmd --permanent --zone=public --add-service=http
sudo firewall-cmd --permanent --zone=public --add-service=https

echo "start mariadb"

sudo systemctl start mariadb

