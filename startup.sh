#!/bin/bash

# Download the docker-compose file
curl -O https://raw.githubusercontent.com/bomberman997/pdf-client-billserver/main/docker-compose1.yml

# Alternatively, you can use wget if curl is not available
# wget https://raw.githubusercontent.com/bomberman997/pdf-client-billserver/main/docker-compose1.yml

# Start up the services defined in the downloaded docker-compose file
docker-compose -f docker-compose1.yml up -d
