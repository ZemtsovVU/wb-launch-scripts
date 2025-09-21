#!/bin/bash

./wb-compile.sh "$@" && \
    ./wb-install.sh "$@" && \
    ./wb-launch.sh
