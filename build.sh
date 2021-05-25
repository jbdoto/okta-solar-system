#!/bin/sh

docker build -t solar-system-backend .
docker tag solar-system-backend:latest <your_ecr_repo>/solar-system-backend:latest
aws ecr get-login-password --region <some_region> --profile=<some_profile> | docker login --username AWS --password-stdin <your_ecr_repo>
docker push <your_ecr_repo>/solar-system-backend:latest

