#!/bin/sh

# format: package_name/activity_name
adb shell am start \
    -n "com.wildberries.ru.dev/ru.wildberries.SplashActivity" \
    -a android.intent.action.MAIN \
    -c android.intent.category.LAUNCHER
