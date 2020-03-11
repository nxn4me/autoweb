#!/bin/bash

dominio=$1

cp modelo.conf /etc/apache2/sites-available/$dominio.conf

sed -i s/localhost/$dominio/g /etc/apache2/sites-available/$dominio.conf

mkdir /var/www/$dominio

cp modelo.html /var/www/$dominio/index.html

sed -i s/localhost/$dominio/g /var/www/$dominio/index.html

a2ensite $dominio.conf

systemctl reload apache2
