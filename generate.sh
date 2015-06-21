#!/bin/bash
echo "Build tz-docker-night-light image.."
docker build -t tz-docker-night-light .

docker run -ti --rm \
       -v $PWD/Slides:/data/Slides \
       -v $PWD/Gruntfile.js:/data/Gruntfile.js \
       -v $PWD/dist:/data/dist \
       tz-docker-night-light package
