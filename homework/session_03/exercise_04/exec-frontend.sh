#!/bin/bash

## create container rikkei-frontend-qa from image nginx with environment variable API_ENDPOINT=https://qa-api.rikkei.edu.vn
docker run -d --name rikkei-frontend-qa -e API_ENDPOINT=https://qa-api.rikkei.edu.vn nginx 

## check variable API_ENDPOINT in container rikkei-frontend-qa
docker exec -it rikkei-frontend-qa sh -c 'echo $API_ENDPOINT'