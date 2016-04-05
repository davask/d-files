#!/bin/bash
rm -r /var/www/html
ln -sf /home/${DWL_FILES_USER} /var/www/html
echo "User files linked";