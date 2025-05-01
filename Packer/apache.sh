#!/bin/bash

#Installing apache
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

sudo yum install -y php php-mysqlnd wget tar

#Installing Wordpress
sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xzf latest.tar.gz
sudo cp -r wordpress/* /var/www/html/
sudo rm -rf wordpress latest.tar.gz
sudo chown -R apache:apache /var/www/html
sudo systemctl restart httpd