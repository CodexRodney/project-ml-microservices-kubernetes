#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
export dockerpath=codexrodney/udacity:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run machine-learning\
    --image=$dockerpath\
    --port=80 --labels app=machine-learning

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/machine-learning-5c7c5fcd7c-m4n9x --address 0.0.0.0 8000:80

