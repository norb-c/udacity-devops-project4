#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=chigozie391/udacity

# Step 2
# Run the Docker Hub container with kubernetes

kubectl create deploy udaproject4 --image=chigozie391/udaproject4:v1.0.0
# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/udaproject4-54c44487c4-l8hnt --address 0.0.0.0 8000:80
