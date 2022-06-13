#!/bin/sh

if [ ! "$(command -v podman-compose)" ]; then
	pip3 install podman-compose
else
	echo Podman Compose installed. Skipping.
fi
