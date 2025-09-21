#!/bin/bash

# define colored print functions
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

# print_yellow "\n...installing (with gradle)...\n\n"
# ./gradlew :app:installGoogleDebug

print_yellow "\n...installing (with adb)...\n\n"
adb install app/build/outputs/apk/$flavor/$build_type/app-$flavor-$build_type.apk
