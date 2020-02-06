#!/bin/bash
        sudo apt install software-properties-common
        sudo add-apt-repository -y  ppa:nginx/stable
        sudo apt-get update
        sudo apt-get install -y nginx php7.2-fpm git php7.2-mysql mysql-client-5.7
        sudo cp -r /Project-Cilsy-AWS-master/sosial-media-master/* /var/www/html
        sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
        sudo mv /Project-Cilsy-AWS-master/nginx/default.web /etc/nginx/sites-available/default
        sudo nginx -t
        sudo nginx -s reload
        sudo systemctl restart php7.2-fpm.service
        sudo systemctl restart nginx.service
        
        #mysql
        mysql -h alamat -u admin -p"abcd1234567890" -e "CREATE DATABASE pesbukdb;"
        mysql -h alamat -u admin -p"abcd1234567890" -e "GRANT ALL ON pesbukdb.* TO 'admin'@'%';"
        mysql -h alamat -u admin -p"abcd1234567890" -e "FLUSH PRIVILEGES;"

        
