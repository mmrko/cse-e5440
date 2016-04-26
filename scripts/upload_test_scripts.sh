#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
DEST_DIR="/sdcard/cse-e5440"

adb root

adb shell "rm -rf $DEST_DIR/tests"

adb push "$SCRIPT_DIR/tests" "$DEST_DIR/tests/"