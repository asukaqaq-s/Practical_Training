#!/bin/bash

# delete all yum 
rpm -qa|grep yum|xargs rpm -e --nodeps
# download the yum.rpm file
wget https://mirrors.aliyun.com/centos/8/BaseOS/x86_64/os/Packages/yum-4.7.0-4.el8.noarch.rpm
wget https://mirrors.aliyun.com/centos/8/BaseOS/x86_64/os/Packages/yum-utils-4.0.21-3.el8.noarch.rpm
wget https://mirrors.aliyun.com/centos/8/BaseOS/x86_64/os/Packages/python3-urllib3-1.24.2-5.el8.noarch.rpm
# install
rpm -ivh --force --nodeps python3-urllib3-1.24.2-5.el8.noarch.rpm
rpm -ivh --force --nodeps yum-4.7.0-4.el8.noarch.rpm
rpm -ivh --force --nodeps yum-utils-4.0.21-3.el8.noarch.rpm

cd /etc/yum.repo.d
mkdir bak
mv redhat.repo bak/ # backup file
wget -O /etc/yum.repos.d/redhat.repo http://mirrors.aliyun.com/repo/Centos-8.repo

# update
yum clean all
yum makecache
yum repolist
# install the vim
sudo yum -y install vim
