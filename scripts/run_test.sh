#!/bin/sh

if [[ ! -z $DEBUG ]]; then
  set -x
fi

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
ROOT_DIR="$(dirname $SCRIPT_DIR)"
TESTS=$1
TESTS=${TESTS:-$(ls $ROOT_DIR/tests/*.sh)}

source "$SCRIPT_DIR/vars"
export $(cut -d= -f1 "$SCRIPT_DIR/vars")

# Check that emulator/device is connected
ENVIRONMENT=$ENVIRONMENT $SCRIPT_DIR/check_connection.sh || exit 1

echo "\nClosing any open Firefox..."
adb shell "am force-stop $PACKAGE_NAME" >/dev/null

echo "\nSetting screen brightness.."
adb shell "settings put system screen_off_timeout 1800000" >/dev/null
adb shell "settings put system screen_brightness 255" >/dev/null
adb shell "settings put system screen_auto_brightness 0" >/dev/null

echo "\nUploading test scripts..."
$ROOT_DIR/scripts/upload_test_scripts.sh

echo "\nSleeping for $BASE_WAIT_TIME s..."
sleep $BASE_WAIT_TIME

echo "\nLaunching Firefox..."
adb shell "am start $PACKAGE_NAME"

echo "\nSleeping for $((BASE_WAIT_TIME * 2))s..."
sleep $(($BASE_WAIT_TIME * 2))

echo "\nRunning test(s)...\n"

for test in $TESTS; do
  site=${test/.sh/}
  echo "Browsing $site..."

  $SCRIPT_DIR/navigate_to.sh "https://$site"

  btwt=$BASE_TAP_WAIT_TIME
  bswt=$BASE_SWIPE_WAIT_TIME
  bsnwt=$BASE_SUBPAGE_NAVIGATION_WAIT_TIME
  adb shell "
    BASE_TAP_WAIT_TIME=$btwt \
    BASE_SWIPE_WAIT_TIME=$bswt \
    BASE_SUBPAGE_NAVIGATION_WAIT_TIME=$bsnwt \
    sh $DEST_DIR/tests/$site.sh
  "
done

echo "\nDone browsing."

echo "\nSleeping for $(($BASE_WAIT_TIME * 2))s..."
sleep $(($BASE_WAIT_TIME * 2))

echo "\nClosing Firefox..."
adb shell "am force-stop $PACKAGE_NAME" >/dev/null

echo "\nSleeping for $(($BASE_WAIT_TIME))s..."
sleep $BASE_WAIT_TIME

echo "\nDone!"
