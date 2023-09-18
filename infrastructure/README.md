# Infrastructure Deployment

# VM

1. Connect to VM: `ssh {user}@vm-{user}-{type}-{env}.westeurope.cloudapp.azure.com`

# Docker Setup (dockerd)

1. Copy script `infrastructure/scripts/setupDocker.sh` to virtual machine `~/setupDocker.sh`
1. Execute script: `sudo ./setupDocker.sh`
1. Copy script `infrastructure/scripts/setupEnv.sh` to virtual machine `~/setupEnv.sh`
1. Execute script: `./setupEnv.sh`
1. Copy file `infrastructure/config/docker/{env}-docker-compose-certificate.yml` to virtual machine `~/docker-compose-certificate.yml`
1. Copy file `infrastructure/config/docker/docker-compose.yml` to virtual machine `~/docker-compose.yml`

# Webserver Setup (nginx)
1. Copy `infrastructure/config/nginx/default.conf` to virtual machine `~/volumes/nginx/default.conf`
1. Copy `infrastructure/config/nginx/nginx.conf` to virtual machine `~/volumes/nginx/nginx.conf`
1. Copy `infrastructure/config/nginx/nginx-mempool.conf` to virtual machine `~/volumes/nginx/nginx-mempool.conf`
1. Copy `infrastructure/config/nginx/site-content/index.html` to virtual machine `~/volumes/nginx/site-content`

# Create Certificate (certbot / letsencrypt)

1. Execute command `sudo docker compose -f docker-compose-certificate.yml up -d`
1. Check certbot log `docker logs lightning-explorer-certbot-1`
1. Copy script `infrastructure/scripts/{env}-copy-certificate.sh` to virtual machine `~/copy-certificate.sh`
1. Execute script: `./copy-certificate.sh`

Note: `Port 80` must be temporary open to the public during the creation of the certificate.

# Execute Explorer

1. Execute command `sudo docker compose up -d`
