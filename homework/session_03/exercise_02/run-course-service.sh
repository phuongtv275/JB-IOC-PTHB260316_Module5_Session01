#!/bin/bash

## run container from image nginxdemos/hello
docker run -d --name rikkei-course-service -p 8081:80 nginxdemos/hello

## check container status
docker ps 

## curl to check the service
curl http://localhost:8081