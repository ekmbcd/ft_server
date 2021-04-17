#!/bin/bash
if grep -q "autoindex on" /etc/nginx/sites-available/default
then 
    sed -i 's/autoindex on/autoindex off/' /etc/nginx/sites-available/default
    echo "autoindex off"
    service nginx restart
else
    sed -i 's/autoindex off/autoindex on/' /etc/nginx/sites-available/default
    echo "autoindex on"
    service nginx restart

fi
