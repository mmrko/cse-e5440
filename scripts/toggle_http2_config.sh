#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
source "$SCRIPT_DIR/vars"

adb $DEVICE shell "am start $PACKAGE_NAME" && adb $DEVICE shell sleep 2
$SCRIPT_DIR/navigate_to.sh "about:config" && adb $DEVICE shell sleep 2
