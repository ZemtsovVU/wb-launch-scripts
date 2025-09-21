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

print_yellow "\nStarting detektChanges...\n\n"

./gradlew detektChanges
