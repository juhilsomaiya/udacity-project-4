#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
export dockerpath=imjuhilsomaiya/house_prediction

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username imjuhilsomaiya
docker tag house_prediction $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
