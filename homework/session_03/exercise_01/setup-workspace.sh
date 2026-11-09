#!/bin/bash

## create group rikkeilms and user rikkeilms
sudo groupadd rikkeilms
sudo useradd -r -g rikkeilms -s /bin/false rikkeilms

## create folder /opt/rikkei/course-service
sudo mkdir -p /opt/rikkei/course-service

## change owner of folder /opt/rikkei/course-service to user rikkeilms and group rikkeilms
sudo chown -R rikkeilms:rikkeilms /opt/rikkei/course-service 
sudo chmod -R 755 /opt/rikkei/course-service

## check folder /opt/rikkei/course-service
ls -ld /opt/rikkei/course-service