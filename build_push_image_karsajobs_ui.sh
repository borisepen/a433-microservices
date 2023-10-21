#! /bin/bash

#Perintah untuk build Docker image dari berkas Dockerfile yang disediakan
docker build -t borisepen/karsajobs-ui:latest .

#Perintah untuk login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u borisepen --password-stdin

#Perintah untuk push image ke Docker Hub
docker push borisepen/karsajobs-ui:latest
