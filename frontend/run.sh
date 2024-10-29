#!/bin/bash
FRONTEND_IP_ADDRESS="192.168.0.101"
BACKEND_IP_ADDRESS="192.168.0.201"
FRONTEND_NAME="wsuv-hp-capstone.com"
BACKEND_NAME="api.wsuv-hp-capstone.com"

echo "===== Building docker image... ====="
docker build -t frontend .
#echo "===== Running docker image... ====="
#docker run --rm -t -v "./src:/var/www/html" --network  capstone --ip=$FRONTEND_IP_ADDRESS --add-host $FRONTEND_NAME:$FRONTEND_IP_ADDRESS --add-host $BACKEND_NAME:$BACKEND_IP_ADDRESS  -p 80:80 frontend:1.0
#echo "===== Server is now active (listening on port 80) ====="
