#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
source "$SCRIPT_DIR/vars"

adb shell "am start $PACKAGE_NAME" >/dev/null && adb shell sleep 2
$SCRIPT_DIR/navigate_to.sh "about:config"
adb shell input tap 700 300
adb shell input text "enabled.http2"
adb shell sleep 1
adb shell input tap 500 500  # select flag
adb shell input tap 1000 600
