#!/bin/bash
ln -sf /home/${DWL_FILES_USER}/* /var/www/html
chmod -R 777 /var/www/html
tail -f /dev/null;