#!/bin/bash

# Set your Docker repository details
DOCKER_REPO="prod"
DOCKER_TAG="latest"

# Log in to Docker Hub
echo "Logging in to Docker Hub..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Tag the Docker image
LOCAL_IMAGE="marc_proj"
echo "Tagging the Docker image..."
docker tag "${LOCAL_IMAGE}" "$DOCKER_USERNAME/${DOCKER_REPO}:${DOCKER_TAG}"

# Push the Docker image to Docker Hub
echo "Pushing the Docker image to Docker Hub..."
docker push "$DOCKER_USERNAME/${DOCKER_REPO}:${DOCKER_TAG}"

echo "Deployment to Docker Hub completed successfully."

# Deploy using Docker Compose
docker-compose up -d
