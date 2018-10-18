#!bin/bash

yum -y update

# pytho 2.7
yum install gcc openssl-devel bzip2-devel
wget https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz
tar xzf Python-2.7.15.tgz
cd Python-2.7.15
./configure --enable-optimizations
make install

# remove install Python
cd ../
rm -rf Python-2.7.15

#Install utils
yum -y install scp curl unzip tar wget openssl python27 ntp
 
#Set ulimit to 10000
ulimit -n 10000;

#Enable NTP (clock)
systemctl enable ntpd

#iptables config
systemctl disable firewalld
service firewalld stop

#Disable SELinux
setenforce 0

# SSH key generation
ssh-keygen -t rsa -N ""

#Set UMASK
echo umask 0022 >> /etc/profile

#SSH setup
cat ssh/id_rsa.pub >> ~/.ssh/authorized_keys

chmod 700 ~/.ssh

chmod 600 ~/.ssh/authorized_keys

#mysql-connector
sudo yum install mysql-connector-java*
ls -al /usr/share/java/mysql-connector-java.jar
cd /var/lib/ambari-server/resources/
ln -s /usr/share/java/mysql-connector-java.jar mysql-connector-java.jar

