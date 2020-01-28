#!/bin/bash
        sudo apt install software-properties-common
        sudo add-apt-repository -y  ppa:nginx/stable
        sudo apt-get update
        sudo apt-get install -y nginx php7.2-fpm git
        sudo cp -r /Project-Cilsy-AWS/sosial-media-master/* /var/www/html
        sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
        sudo mv /Project-Cilsy-AWS/nginx/default.web /etc/nginx/sites-available/default
        sudo nginx -t
        sudo nginx -s reload
        sudo systemctl restart php7.2-fpm.service
        sudo systemctl restart nginx.service

        
