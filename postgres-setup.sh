#!/usr/bin/env bash

#updating system
yum -y update

#adding postgres server and extras
yum -y install postgresql-server postgresql-contrib

#initializing the database
postgresql-setup initdb

#startup postgresql service
systemctl start postgresql
systemctl enable postgresql