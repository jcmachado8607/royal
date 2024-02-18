#!/bin/bash

# Get the current git commit hash
GIT_COMMIT_HASH=$(git rev-parse HEAD)

# Build the Docker image with the latest tag and the git commit hash as a tag
docker build --build-arg GIT_COMMIT_HASH=$GIT_COMMIT_HASH -t jcmachado86/royal-app:latest -t jcmachado86/royal-app:$GIT_COMMIT_HASH .
