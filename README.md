# Docker Yeoman

Docker images for node yeoman

## About Docker Yeoman

This repo contains a Dockerfile that is used to build & push Docker images to [Docker Hub](https://hub.docker.com/repository/docker/nystudio107/node-yeoman) that contain the Yeoman command `yo`, so you can run it via Docker with whatever version of Node.js you require.

The images are built "in the cloud" via GitHub actions:

- When any changes are pushed to the `develop` branch, the images are rebuilt to ensure they build properly
- When a new tagged release is pushed, the images are built, tagged, and pushed to Docker Hub

Images are built for Node.js versions 12, 14 & 16, for both AMD (Intel) and ARM (Apple Silicon) architectures.
