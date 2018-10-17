
# **Big Data 4 All** - Installation guide

### **Seiji SCHOCH** - **October 15th 2018** - ** Version 0.1**


# **Purpose**

This present document describes the installation steps to prepare your server to host Hadoop services. This document relies heavily on the Apache Ambari documentation found [here](https://docs.hortonworks.com/HDPDocuments/Ambari-2.7.1.0/bk_ambari-installation/content/ch_Getting_Ready.html).

# **Technical Stack**

We will be using the Hortonworks distribution of Hadoop : [HDP](https://fr.hortonworks.com/products/data-platforms/hdp/)

As of today, we will use HDP 3.0

# **Hardware requirements**

The condition to join the project is to contribute a dedicate server with at least 4 cores, 16Go RAM and 1To HDD. Kimsufi provides such servers for a low cost [here](https://www.kimsufi.com/fr/serveurs.xml). We suggest one of the three following offers : KS-10, KS-11 or KS-12.

# **Software requirements**

### **Operating system**

You are required to have a CentOS 7 distribution running on the server. We have chosen to limit the OS choice to avoid the complexity of having a multi-OS cluster.

### **Software**

The installation script will install the following software on your server : **scp, curl, unzip, tar, wget, openssl, python27, ntp.**

  

Once the host is ready for ambari, various Hadoop services will be installed on your server, depending on the current needs for the cluster. This may include :

 - Apache Ranger
 - Apache KNOX
 - Apache Atlas
 - HDFS
 - YARN
 - HIVE
 - Druid
 - Apache Zeppelin
 - Apache Spark
 - TensorFlow
 - Apache Kafka
 - TensorFlow
 - Apache Kafka
 - Apache Storm
 - Apache Phoenix
 - Apache HBASE
 - Ambari
 - CloudBreak

# **Installation**

Move your current directory to the repository’s root folder :

    cd path/to/the/repo/bigdata4all/

Zip the scripts fodler located in Install/script :

    zip -R install.zip Install/script/

Send the zip file to your server :

    scp install.zip root@[SERVERIP]:/home/

Connect to your server :

    ssh root@[SERVERIP]

Then enter your password (For kimsufi you’ll receive it via mail, check your spam box if you can’t find it)

Move to your home directory and unzip the install.zip file :

    cd /home

    Unzip install.zip

Run the install_env_agent.sh script

    bash Install/script/install_env_agent.sh

You have finished installing the minimal requirements, you can now notify the administrator that you are ready and send him your Fully Qualified Domain Name (Ex : ns375465.ip-94-23-35.eu)


