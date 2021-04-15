#!/usr/bin/env bash

docker stop webrviz
docker rm webrviz
docker-compose up -d webrviz
