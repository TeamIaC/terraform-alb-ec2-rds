#!/bin/bash
yum update -y

## Apache & Mysql　Setup
yum install -y httpd
yum install -y mysql
chown -R apache:apache /var/www/html
systemctl start httpd
systemctl enable httpd