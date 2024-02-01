#!/bin/bash

# Set the image name
IMAGE_NODEAPI_NAME="rattymyles/nodeapi"
IMAGE_REACT_NAME="rattymyles/reactnginx"

# Set the path to the build context (assuming the Dockerfile is in the "node_api" directory)
BUILD_NODEAPI_CONTEXT="node_api"
BUILD_REACT_CONTEXT="react-frontend"

# Build the Docker image
docker buildx build -t $IMAGE_NODEAPI_NAME -f "$BUILD_NODEAPI_CONTEXT/Dockerfile" "$BUILD_NODEAPI_CONTEXT"
docker buildx build -t $IMAGE_REACT_NAME -f "$BUILD_REACT_CONTEXT/Dockerfile" "$BUILD_REACT_CONTEXT"