#!/bin/bash


# install the yum
yum install -y yum-utils device-mapper-persistent-data lvm2 --skip-broken

# set docker.repo
yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

sed -i 's/download.docker.com/mirrors.aliyun.com\/docker-ce/g' /etc/yum.repos.d/docker-ce.repo

yum makecache

# install docker ce

yum install -y docker-ce --allowerasing

# restart

systemctl start docker
systemctl enable docker
systemctl stop firewalld
