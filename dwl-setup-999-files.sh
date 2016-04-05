#!/bin/bash
ln -sf /home/${DWL_FILES_USER}/* /var/www/html
# TODO : check files access from outside container
chmod -R 777 /var/www/html
echo "User files linked";
