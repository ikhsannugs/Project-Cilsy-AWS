#!/bin/bash
        sudo apt install software-properties-common
        sudo apt-get update
        sudo apt-get install -y haproxy
        sudo vim /etc/haproxy/haproxy.cfg
        sudo systemctl restart haproxy.service 
