#!/bin/sh

PACKAGE_NAME="org.mozilla.fennec"

sleep 10

# Launch Firefox
adb shell "am start $PACKAGE_NAME"

sleep 5

# TODO: run a test script
# ...

sleep 5

# Close Firefox
adb shell "am force-stop $PACKAGE_NAME"

sleep 10
