#!/bin/sh
# Script to populate static folder with the required stuff (images & co)

IMAGES="ubuntu fedora jpetazzo/clock busybox"

echo "Get the required images"

for image in ${IMAGES}
do
    docker pull ${image}
    echo "Saving ${image} ..."
    docker save -o static/${image////-}.tgz ${image}
done


