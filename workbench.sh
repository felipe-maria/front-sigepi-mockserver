#!/bin/bash

TAG=front-sigepi-mockserver
PORT_MOCK_SERVER="3000"

# Build the project
docker build -t $TAG .

# Remove previous image
docker rm $TAG

# Builds and runs it in interactive mode, maps the current host directory to the container /var/www directory
# use TAG var image, name the container using TAG var and start the container with bash
docker run -it \
  -v "$(pwd):/var/www" \
  -p $PORT_MOCK_SERVER:$PORT_MOCK_SERVER \
  --name $TAG $TAG \
  bash
