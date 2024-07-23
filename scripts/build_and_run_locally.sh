#!/bin/bash

IMAGE_NAME="streamlit-mvp"

# PLAIN ENGLISH: 
#   Find the local `Dockerfile` in the current directory `.` and build an image based 
#   on the instructions in there. The `-t` flag tells Docker to give the image a name
#   and here we specify the name to be `$IMAGE_NAME`
docker build -t $IMAGE_NAME .

# PLAIN ENGLISH:
#   Run the container using the built image `$IMAGE_NAME`, exposing port 8080 for the
#   host port and 8080 for the container port (both is a choice). We specify the ports 
#   using the `-p` flag. The `--rm` flag tells Docker to remove the container (not the 
#   image!) after it stops running.
HOST_PORT=8080
CONTAINER_PORT=8080
docker run --rm -p $HOST_PORT:$CONTAINER_PORT $IMAGE_NAME