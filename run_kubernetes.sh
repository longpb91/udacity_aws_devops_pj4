#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=longpb/ml-microservice-kubernetes:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy python-helloworld --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get nodes

# Step 4:
# Forward the container port to a host
kubectl port-forward longpb/ml-microservice-kubernetes 8080:80
