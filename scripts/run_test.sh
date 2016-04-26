#!/bin/sh

PACKAGE_NAME="org.mozilla.firefox"
TEST=$1
BASE_TIME=5

sleep $BASE_TIME

# Launch Firefox
adb shell "am start $PACKAGE_NAME"

sleep $(($BASE_TIME * 2))

# Run a test
adb shell "sh /sdcard/cse-e5440/tests/$TEST"

sleep $(($BASE_TIME * 2))

# Close Firefox
adb shell "am force-stop $PACKAGE_NAME"

sleep $BASE_TIME
