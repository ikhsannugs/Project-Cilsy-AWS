#!/bin/bash
        sudo apt install software-properties-common
        sudo add-apt-repository -y  ppa:nginx/stable
        sudo apt-get update
        sudo apt-get install -y nginx php7.2-fpm git php7.2-mysql mysql-client-5.7
        #config.php
        sudo sed -i 's/username/admin/g' /Project-Cilsy-AWS-master/sosial-media-master/config.php   
        sudo sed -i 's/password/abcd1234567890/g' /Project-Cilsy-AWS-master/sosial-media-master/config.php   
        sudo sed -i 's/database/pesbukdb/g' /Project-Cilsy-AWS-master/sosial-media-master/config.php 
        sudo sed -i 's/alamat/database-1.citrm16v9p2y.ap-southeast-1.rds.amazonaws.com/g'  /Project-Cilsy-AWS-master/sosial-media-master/config.php  
        sed -i 's/\r$//g' /Project-Cilsy-AWS-master/sosial-media-master/config.php
        sudo cp -r /Project-Cilsy-AWS-master/sosial-media-master/* /var/www/html
        sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
        sudo mv /Project-Cilsy-AWS-master/nginx/default.web /etc/nginx/sites-available/default
        sudo nginx -t
        sudo nginx -s reload
        sudo systemctl restart php7.2-fpm.service
        sudo systemctl restart nginx.service
        
        #mysql
        mysql -h alamat -u username -p"password" -e "CREATE DATABASE database;"
        mysql -h alamat -u username -p"password" -e "GRANT ALL ON database.* TO 'username'@'%';"
        mysql -h alamat -u username -p"password" -e "FLUSH PRIVILEGES;"
        cd /var/www/html
        mysql -h alamat -u username -p"password" database < dump.sql

        
