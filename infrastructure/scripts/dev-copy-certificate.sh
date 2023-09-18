#!/bin/bash

sudo chown -R lds:lds /home/lds/volumes

sourcedir=/home/lds/volumes/certbot/etc/live/vm-lds-exp-dev.westeurope.cloudapp.azure.com
targetdir=/home/lds/volumes/nginx/ssl/live/vm-lds-exp-dev.westeurope.cloudapp.azure.com

cp ${sourcedir}/fullchain.pem ${targetdir}
cp ${sourcedir}/privkey.pem ${targetdir}
