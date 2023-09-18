# Infrastructure Deployment

# VM

1. Connect to VM: `ssh {user}@vm-{user}-{type}-{env}.westeurope.cloudapp.azure.com`

# Docker Setup (dockerd)

1. Copy script `infrastructure/scripts/setupDocker.sh` to virtual machine `~/setupDocker.sh`
1. Execute script: `sudo ./setupDocker.sh`
1. Copy script `infrastructure/scripts/{env}-setupEnv.sh` to virtual machine `~/setupEnv.sh`
1. Execute script: `./setupEnv.sh`
1. Copy file `infrastructure/config/docker/{env}-docker-compose-certificate.yml` to virtual machine `~/docker-compose-certificate.yml`
1. Copy file `infrastructure/config/docker/{env}-docker-compose.yml` to virtual machine `~/docker-compose.yml`

# Create Certificate (certbot)

1. Execute command `sudo docker compose -f docker-compose-certificate.yml up -d`
1. Check certbot log `docker logs lightning-explorer-certbot-1`
1. Copy script `infrastructure/scripts/{env}-copy-certificate.sh` to virtual machine `~/copy-certificate.sh`
1. Execute script: `./copy-certificate.sh`

# Execute Explorer

1. Execute command `sudo docker compose up -d`
