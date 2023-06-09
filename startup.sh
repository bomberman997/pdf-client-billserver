#!/bin/bash

# nginx download
curl -O https://raw.githubusercontent.com/bomberman997/pdf-client-billserver/main/nginx.conf

chmod +x nginx.conf

# Download the docker-compose file
curl -O https://raw.githubusercontent.com/bomberman997/pdf-client-billserver/main/docker-compose2.yml

chmod +x docker-compose2.yml

# Alternatively, you can use wget if curl is not available
# wget https://raw.githubusercontent.com/bomberman997/pdf-client-billserver/main/docker-compose1.yml

# Start up the services defined in the downloaded docker-compose file
docker-compose -f docker-compose2.yml up -d --no-recreate
