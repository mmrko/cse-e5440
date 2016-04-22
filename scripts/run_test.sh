#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
PACKAGE_NAME="org.mozilla.fennec"

$SCRIPT_DIR/install_browser.sh

# Launch Firefox
adb shell "am start $PACKAGE_NAME"

# TODO: upload test file to the device (adb push)
# ...

# TODO: run tests
# ...

sleep 5 # TODO: remove this, here just for demo

# Close Firefox
adb shell "am force-stop $PACKAGE_NAME"
