#!/bin/bash
./gradlew :app:assembleGoogleDebug && \
adb install app/build/outputs/apk/google/debug/app-google-debug.apk && \
adb shell am start \
    -n "com.wildberries.ru.dev/ru.wildberries.SplashActivity" \
    -a android.intent.action.MAIN \
    -c android.intent.category.LAUNCHER
# format: applicationId/activityName