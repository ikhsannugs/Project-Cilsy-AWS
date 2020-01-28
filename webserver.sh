#!/bin/bash
        sudo apt install software-properties-common
        sudo add-apt-repository -y  ppa:nginx/stable
        sudo apt-get update
        sudo apt-get install -y nginx php7.2-fpm git
        sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
        sudo mv /home/ubuntu/Project-Cilsy-AWS/nginx/default.webserver /etc/nginx/sites-available/default

        
