#!/bin/bash
        sudo apt install software-properties-common
        sudo add-apt-repository -y  ppa:nginx/stable
        sudo apt-get update
        sudo apt-get install -y nginx php7.2-fpm git php7.2-mysql
        sudo cp -r /Project-Cilsy-AWS-master/sosial-media-master/* /var/www/html
        sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
        sudo mv /Project-Cilsy-AWS-master/nginx/default.web /etc/nginx/sites-available/default
        sudo nginx -t
        sudo nginx -s reload
        sudo systemctl restart php7.2-fpm.service
        sudo systemctl restart nginx.service
        sudo apt-get install -y mysql-serve
        sudo mysql -u root -e "SELECT user,authentication_string,plugin,host FROM mysql.user;"
        sudo mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Abcd1234567890-';"
        sudo mysql -u root -p"Abcd1234567890-" -e "FLUSH PRIVILEGES;"
        sudo mysql -u root -p"Abcd1234567890-" -e "SELECT user,authentication_string,plugin,host FROM mysql.user;"
        sudo mysql -u root -p"Abcd1234567890-" -e "CREATE USER 'devopscilsy'@'localhost' IDENTIFIED BY '1234567890';"
        sudo mysql -u root -p"Abcd1234567890-" -e "GRANT ALL PRIVILEGES ON *.* to 'devopscilsy'@'localhost';"
        sudo mysql -u "devopscilsy" -p"1234567890" -e "CREATE DATABASE dbsosmed;"
        sudo mysql -u "devopscilsy" -p"1234567890" -e "show databases;"
        cd /var/www/html
        sudo mysql -u "devopscilsy" -p"1234567890" dbsosmed < dump.sql
        sudo systemctl restart nginx.service
        sudo systemctl restart mysql.service
        sudo systemctl restart php7.2-fpm.service

        
