#! /bin/bash
tag=docker.io/juantascon/subliminal
podman build . -t $tag && podman push $tag
