#!/bin/bash

echo "Clean previous container"
docker kill tz-static tz-prez
docker rm -f tz-static tz-prez || true

echo "Build zenika/go-server image.."
docker build -t zenika/go-server -f static/server/Dockerfile
echo "Run it on local port 9000"
docker run -d -p 80:8000 \
       -v $PWD/static:/go/src/app/static \
       --name tz-static \
       zenika/go-server

echo "Build tz-docker-night-light image.."
docker build -t tz-docker-night-light .
echo "Run it on local port 8000"
docker run -d -p 8000:8000 \
       -v $PWD/Slides:/data/Slides \
       -v $PWD/Gruntfile.js:/data/Gruntfile.js \
       --name tz-prez \
       tz-docker-night-light
