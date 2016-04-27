#!/bin/sh

if [[ ! -z $DEBUG ]]; then
  set -x
fi

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
ROOT_DIR="$(dirname $SCRIPT_DIR)"
TESTS=$1
TESTS=${TESTS:-$(ls $ROOT_DIR/tests/*.sh)}

source "$SCRIPT_DIR/vars"

if [[ $ENVIRONMENT == "device" ]];then
  xM=1.40625
  xO=0
  yM=1.5
  yO=0
fi

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
adb shell "am start $PACKAGE_NAME" >/dev/null

echo "\nSleeping for $((BASE_WAIT_TIME * 2))s..."
sleep $(($BASE_WAIT_TIME * 2))

echo "\nRunning test(s)...\n"

for test in $TESTS; do
  site=${test/.sh/}
  echo "Browsing $site..."

  $SCRIPT_DIR/navigate_to.sh "https://$site"

  adb shell "sh $DEST_DIR/tests/$site.sh" >/dev/null
done

echo "\nDone browsing."

echo "\nSleeping for $(($BASE_WAIT_TIME * 2))s..."
sleep $(($BASE_WAIT_TIME * 2))

echo "\nClosing Firefox..."
adb shell "am force-stop $PACKAGE_NAME" >/dev/null

echo "\nSleeping for $(($BASE_WAIT_TIME))s..."
sleep $BASE_WAIT_TIME

echo "\nDone!"
