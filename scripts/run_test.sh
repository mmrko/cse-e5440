#!/bin/sh

PACKAGE_NAME="org.mozilla.firefox"
TEST=$1
BASE_TIME=5
ENVIRONMENT=${ENVIRONMENT:-device}

xM=0;x0=0;yM=0;yO=0

if [[ $ENVIRONMENT == "device" ]];then
  # Emulator: 768x1280
  # S4: 1080x1920
  # => 1.40625x1.5
  xM=1.40625
  xO=0
  yM=1.5
  yO=0
fi

sleep $BASE_TIME

# Launch Firefox
adb shell "am start $PACKAGE_NAME"

sleep $(($BASE_TIME * 2))

# Run a test
adb shell "sh xM=$xM xO=$xO yM=$yM yO=$yO /sdcard/cse-e5440/tests/$TEST"

sleep $(($BASE_TIME * 2))

# Close Firefox
adb shell "am force-stop $PACKAGE_NAME"

sleep $BASE_TIME
