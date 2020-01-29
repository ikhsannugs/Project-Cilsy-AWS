#!/bin/bash
        sudo apt install software-properties-common
        sudo apt-get update
        sudo apt-get install -y haproxy
        sudo mv /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.bak
        sudo mv /Project-Cilsy-AWS-master/nginx/haproxy.cfg.set /etc/haproxy/haproxy.cfg
        sudo systemctl restart haproxy.service 
