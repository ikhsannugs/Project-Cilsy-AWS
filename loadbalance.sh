#!/bin/bash
        sudo apt install software-properties-common
        sudo add-apt-repository -y  ppa:nginx/stable
        sudo apt-get update
        sudo apt-get install -y nginx
        sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
        sudo mv /Project-Cilsy-AWS-master/nginx/default.loadbalance /etc/nginx/sites-available/default
        sudo nginx -t
        sudo nginx -s reload
        sudo systemctl restart nginx.service
