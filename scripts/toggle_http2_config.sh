#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
source "$SCRIPT_DIR/vars"
export $(cut -d= -f1 "$SCRIPT_DIR/vars")

alias input="adb shell input"

adb shell "am start $PACKAGE_NAME" >/dev/null && adb shell sleep 2
BASE_NAVIGATION_WAIT_TIME=1 $SCRIPT_DIR/navigate_to.sh "about:config"
input tap 700 300 >/dev/null
input text "enabled.http2" >/dev/null
adb shell sleep 1
input tap 500 500  # select flag
input tap 1000 600
