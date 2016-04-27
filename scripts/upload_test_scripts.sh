#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
ROOT_DIR="$(dirname $SCRIPT_DIR)"
DEST_DIR="/sdcard/cse-e5440"

adb root >/dev/null

adb shell "rm -rf $DEST_DIR/tests"

adb push "$ROOT_DIR/tests" "$DEST_DIR/tests/"