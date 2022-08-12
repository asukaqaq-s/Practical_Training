FROM centos

RUN mv /etc/yum.repos.d /etc/yum.repos.d-bak

RUN mkdir /etc/yum.repos.d

RUN cd /etc/yum.repos.d

RUN wget http://mirrors.aliyun.com/repo/Centos-7.repo

RUN yum clean all

RUN yum install vim
