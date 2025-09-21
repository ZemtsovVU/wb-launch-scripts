#!/bin/bash
adb install app-navberry/build/outputs/apk/debug/app-navberry-debug.apk && \
adb shell am start \
    -n "ru.wildberries.appnavberry/ru.wildberries.appnavberry.MainActivity" \
    -a android.intent.action.MAIN \
    -c android.intent.category.LAUNCHER
# format: applicationId/activityName
