#!/bin/bash
echo "Build tz-docker-night-light image.."
docker build -t tz-docker-night-light .
echo "Run it on local port 8000"
docker run --rm -it -p 8000:8000 \
       -v $PWD/CahierExercices:/data/CahierExercices \
       -v $PWD/Exercices:/data/Exercices \
       -v $PWD/Slides:/data/Slides \
       -v $PWD/Gruntfile.js:/data/Gruntfile.js \
       --net=host tz-docker-night-light
