#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
source "$SCRIPT_DIR/vars"

adb shell "am start $PACKAGE_NAME" && adb shell sleep 2
$SCRIPT_DIR/navigate_to.sh "about:config" && adb shell sleep 2
