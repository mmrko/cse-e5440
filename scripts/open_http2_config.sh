#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
source "$SCRIPT_DIR/vars"
export $(cut -d= -f1 "$SCRIPT_DIR/vars")

adb shell "am start $PACKAGE_NAME" >/dev/null && adb shell sleep 2
BASE_NAVIGATION_WAIT_TIME=1 $SCRIPT_DIR/navigate_to.sh "about:config"
adb shell input tap 700 300 >/dev/null
adb shell input text "enabled.http2" >/dev/null
