#!/usr/bin/env bash

#updating system
yum -y update

#get erlang rpm
curl -O https://www.rabbitmq.com/releases/erlang/erlang-18.3-1.el7.centos.x86_64.rpm

#adding erlang via rpm
rpm -Uvh erlang-18.3-1.el7.centos.x86_64.rpm

#adding rabbitmq certificate to rpm
rpm --import https://rabbitmq.com/rabbitmq-release-signing-key.asc

#get rabbitmq rpm
curl -O https://www.rabbitmq.com/releases/rabbitmq-server/v3.6.2/rabbitmq-server-3.6.2-1.noarch.rpm

#installing rabbitmq via rpm
yum -y install rabbitmq-server-3.6.2-1.noarch.rpm

#start rabbitmq and enable it at startup
service rabbitmq-server start