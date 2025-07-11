#!/bin/bash

# Check if 'nginx' command is available
if ! command -v nginx &> /dev/null
then
         echo "nginx not found — installing..."
         sudo apt update
         sudo apt install -y nginx
         sudo systemctl start nginx
         sudo systemctl enable nginx
         sudo systemctl status nginx
else
        echo "nginx already installed "
        sudo systemctl status nginx
fi
