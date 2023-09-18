#!/bin/bash

sudo chown -R lds:lds /home/lds/volumes

sourcedir=/home/lds/volumes/certbot/etc/live/explorer.lightning.space
targetdir=/home/lds/volumes/nginx/ssl

cp ${sourcedir}/fullchain.pem ${targetdir}
cp ${sourcedir}/privkey.pem ${targetdir}
