#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
ROOT_DIR="$(dirname $SCRIPT_DIR)"

source "$SCRIPT_DIR/vars"

adb $DEVICE root >/dev/null

adb $DEVICE shell "rm -rf $DEST_DIR/tests"

adb $DEVICE push "$ROOT_DIR/tests" "$DEST_DIR/tests/"