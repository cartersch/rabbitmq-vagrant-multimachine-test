#!/usr/bin/env bash

#adding extra packages for enterprise linux(EPEL)
rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm


#updating system
yum -y update

#installing python pip package manager
yum -y install python-pip

#using pip to install pika message queue package
pip install pika