#!/bin/bash

DOCKER_USERNAME="marcsamuel07"
DOCKER_PASSWORD="dckr_pat_lvLLhQ4zNuygOPjlXsUNgpeewUs"
DOCKER_REPO="prod"
DOCKER_TAG="latest"

echo "Logging in to Docker Hub..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

LOCAL_IMAGE="marc_proj"

echo "Tagging the Docker image..."
docker tag "${LOCAL_IMAGE}" "$DOCKER_USERNAME/${DOCKER_REPO}:${DOCKER_TAG}"


echo "Pushing the Docker image to Docker Hub..."
docker push "$DOCKER_USERNAME/${DOCKER_REPO}:${DOCKER_TAG}"

echo "Deployment to Docker Hub completed successfully."

docker-compose up -d

