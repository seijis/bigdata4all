#!bin/bash

yum -y update

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

#Set UMASK
echo umask 0022 >> /etc/profile

#SSH setup
cat ssh/id_rsa.pub >> ~/.ssh/authorized_keys

chmod 700 ~/.ssh

chmod 600 ~/.ssh/authorized_keys


