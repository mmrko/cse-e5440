#!/bin/sh

if [[ ! -z $DEBUG ]]; then
  set -x
fi

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
ROOT_DIR="$(dirname $SCRIPT_DIR)"
BASE_WAIT_TIME=${BASE_WAIT_TIME:-5}
BASE_NAVIGATION_WAIT_TIME=${BASE_NAVIGATION_WAIT_TIME:-10}
ENVIRONMENT=${ENVIRONMENT:-emulator}
TESTS=$1
TESTS=${TESTS:-$(ls $ROOT_DIR/tests)}
PACKAGE_NAME="org.mozilla.firefox"

xM=1;xO=0;yM=1;yO=0

# Check that emulator/device is connected
ENVIRONMENT=$ENVIRONMENT $SCRIPT_DIR/check_connection.sh || exit 1

if [[ $ENVIRONMENT == "device" ]];then
  # Emulator: 768x1280
  # S4: 1080x1920
  # => 1.40625x1.5
  xM=1.40625
  xO=0
  yM=1.5
  yO=0
fi

ADB_ENV="xM=$xM xO=$xO yM=$yM yO=$yO BASE_WAIT_TIME=$BASE_WAIT_TIME"

function navigate_to () {
  adb shell "$ADB_ENV input tap $(( 500 * $xM + $xO )) $(( 150 * $yM + $yO ))" >/dev/null
  adb shell "$ADB_ENV input text https://$site" >/dev/null
  adb shell "$ADB_ENV input keyevent KEYCODE_ENTER" >/dev/null
  adb shell "sleep $BASE_NAVIGATION_WAIT_TIME" >/dev/null
}

echo "\nSetting screen brightness.."
adb shell "settings put system screen_off_timeout 1800000" >/dev/null
adb shell "settings put system screen_brightness 255" >/dev/null
adb shell "settings put system screen_auto_brightness 0" >/dev/null

echo "\nUploading test scripts..."
$ROOT_DIR/scripts/upload_test_scripts.sh

echo "\nSleeping for $BASE_WAIT_TIME s..."
sleep $BASE_WAIT_TIME

echo "\nLaunching Firefox..."
adb shell "am start $PACKAGE_NAME" >/dev/null

echo "\nSleeping for $((BASE_WAIT_TIME * 2))s..."
sleep $(($BASE_WAIT_TIME * 2))

echo "\nRunning test(s)...\n"

for test in $TESTS; do
  site=${test/.sh/}
  echo "Browsing $site..."

  navigate_to $site

  adb shell "$ADB_ENV sh /sdcard/cse-e5440/tests/$site.sh" >/dev/null
done

echo "\nDone browsing."

echo "\nSleeping for $(($BASE_WAIT_TIME * 2))s..."
sleep $(($BASE_WAIT_TIME * 2))

echo "\nClosing Firefox..."
adb shell "am force-stop $PACKAGE_NAME" >/dev/null

echo "\nSleeping for $(($BASE_WAIT_TIME))s..."
sleep $BASE_WAIT_TIME

echo "\nDone!"
