#!/bin/bash

echo "Setting up containers ... this may take a few minutes. Please stand by."

docker-compose -f './docker/docker-compose.yaml' down
docker-compose -f './docker/docker-compose.yaml' up -d

#./scripts/wait-for-frontend.sh
#./scripts/wait-for-backend.sh
echo ""
echo "-------------------------------"
echo "Setup Complete."
echo ""
echo "Access the frontend by going to localhost:80 in a browser."
echo ""
echo "IMPORTANT: In order for API calls to go through to the backend container, you need to either:"
echo "1. Temporarily Setup your hosts file to point 'api.wsuv-hp-capstone.com' to 192.168.97.201"
echo "2. Temporarily Change 'http://api.wsuv-hp-capstone.com:80/...' URLs in the frontend code to http://192.168.97.201:80/..."
echo ""
