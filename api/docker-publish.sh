# Description: Build and publish docker image
DOCKER_IMAGE_NAME=desneruda/mayita-api
docker build -t $DOCKER_IMAGE_NAME . && docker push $DOCKER_IMAGE_NAME:latest
