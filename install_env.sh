#!bin/bash

yum -y update

#Install utils
yum -y install scp curl unzip tar wget openssl python27 ntp
 
#Set ulimit to 10000
ulimit -n 10000;

#Get ambari repo
wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.1.0/ambari.repo -O /etc/yum.repos.d/ambari.repo

#Install ambari server
yum install -y ambari-server

#Enable NTP (clock)
systemctl enable ntpd

#iptables config
systemctl disable firewalld
service firewalld stop

#Disable SELinux
setenforce 0

#Set UMASK
echo umask 0022 >> /etc/profile
