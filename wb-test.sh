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

# :features:storagesize:testDebugUnitTest --tests "*.StorageSizeServiceTest"
test_package=$1
test_name=$2

gradle_command=""

if [[ "$test_package" == "" ]] || [[ "$test_name" == "" ]]
then
	print_yellow "\nStarting all unit tests...\n"
	gradle_command="testDebugUnitTest -PexcludeDbTests="**/*MigrationTest.class""
else
	print_yellow "\nStarting unit tests for package $test_package and file $test_name...\n"
	gradle_command="$test_package:testDebugUnitTest --tests "*.$test_name""
fi

print_yellow "($gradle_command)\n\n"

#path=~/dev/android/wb-market
#$path/gradlew -p $path $gradle_command

./gradlew $gradle_command
