#!/bin/sh

if [[ ! -z $DEBUG ]]; then
  set -x
fi

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
ROOT_DIR="$(dirname $SCRIPT_DIR)"
BASE_TIME=${BASE_TIME:-5}
ENVIRONMENT=${ENVIRONMENT:-emulator}
TESTS=$1
TESTS=${TESTS:-$(ls $ROOT_DIR/tests)}
PACKAGE_NAME="org.mozilla.firefox"

xM=0;xO=0;yM=0;yO=0

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

echo "Setting screen brightness.."
adb shell "settings put system screen_off_timeout 1800000" >/dev/null
adb shell "settings put system screen_brightness 255" >/dev/null
adb shell "settings put system screen_auto_brightness 0" >/dev/null

echo "Uploading test scripts..."
$ROOT_DIR/scripts/upload_test_scripts.sh

echo "Sleeping for $BASE_TIME s..."
sleep $BASE_TIME

echo "Launching Firefox..."
adb shell "am start $PACKAGE_NAME" >/dev/null

echo "Sleeping for $((BASE_TIME * 2))s..."
sleep $(($BASE_TIME * 2))

echo "Running test(s)..."

for test in $TESTS; do
  site=${test/.sh/}
  echo "Browsing $site..."
  adb shell "xM=$xM xO=$xO yM=$yM yO=$yO BASE_TIME=$BASE_TIME sh /sdcard/cse-e5440/tests/$site.sh" >/dev/null
done

echo "Sleeping for $(($BASE_TIME * 2))s..."
sleep $(($BASE_TIME * 2))

echo "Closing Firefox..."
adb shell "am force-stop $PACKAGE_NAME" >/dev/null

echo "Sleeping for $(($BASE_TIME * 2))s..."
sleep $BASE_TIME
