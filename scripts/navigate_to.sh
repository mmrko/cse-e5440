#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
BASE_NAVIGATION_WAIT_TIME=${BASE_NAVIGATION_WAIT_TIME:-1}
address=$1

adb $DEVICE shell "input tap 500 150" >/dev/null
adb $DEVICE shell "input text $address" >/dev/null
adb $DEVICE shell "input keyevent KEYCODE_ENTER" >/dev/null
adb $DEVICE shell "sleep $BASE_NAVIGATION_WAIT_TIME" >/dev/null
