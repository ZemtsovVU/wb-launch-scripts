#!/bin/bash

print_yellow() {
    printf "\e[1;33m$1\e[0m"
}
print_green() {
    printf "\e[1;32m$1\e[0m"
}
print_red() {
    printf "\e[1;31m$1\e[0m"
}

flavor=$1
build_type=$2

if [[ "$flavor" == "" ]] && [[ "$build_type" == "" ]]; then
    flavor="google"
    build_type="debug"
fi
if [[ "$flavor" == "" ]] || [[ "$build_type" == "" ]]; then
    print_red "\nYou must enter flavor and build type or nothing\n\n"
    exit
fi

print_yellow "\nWas chosen \"$flavor\" flavor and \"$build_type\" build type\n"

print_yellow "\n...assemble app...\n\n" && \
    ./gradlew app:assemble$flavor$build_type && \
    print_yellow "\n...assemble docsparser...\n\n" && \
    ./gradlew :flavored:docsparser:docsparserdynamic:assemble$flavor$build_type
