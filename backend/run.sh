#!/bin/bash
FRONTEND_IP_ADDRESS="192.168.0.101"
BACKEND_IP_ADDRESS="192.168.0.201"
FRONTEND_NAME="wsuv-hp-capstone.com"
BACKEND_NAME="api.wsuv-hp-capstone.com"

#echo "===== Testing MongoDB connection... ====="
### Ensure Mongo is running somewhere on this system
#if nc -z localhost 27017 > /dev/null 2>&1; then
#	echo ""
#else
#	echo "Unable to connect to MongoDB. did you remember to start the Mongo container?"
#	exit 1
#fi

echo "===== Building docker image... ====="
### Create and run backend container
docker build -t backend .
#echo "===== Running docker image... ====="
#docker run -d -v "./src:/home/src" --network capstone --ip=$BACKEND_IP_ADDRESS --add-host $FRONTEND_NAME:$FRONTEND_IP_ADDRESS --add-host $BACKEND_NAME:$BACKEND_IP_ADDRESS backend -c "npm install && npm update" 
#echo "===== Server is now active ====="
