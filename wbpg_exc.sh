#!/bin/bash

sudo apt-get update

sudo apt-get install apache2 unzip -y >> /dev/null 

sudo mkdir -p /root/tmp

wget -P /root/tmp/ https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip

unzip /root/tmp/2136_kool_form_pack.zip >> /dev/null 

sudo cp -r /root/bash_script/2136_kool_form_pack/* /var/www/html/ 

rm -rf /root/tmp

sudo service apache2 status

ls /var/www/html
echo "script execution done"
