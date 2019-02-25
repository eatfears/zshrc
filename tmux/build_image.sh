#!/usr/bin/env bash

[ -d ./share ] || mkdir ./share

docker build \
    --rm \
    -t tmux \
    .