#!/bin/bash

if [[ ! -z $DEBUG ]]; then
  set -x
fi

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
ROOT_DIR="$(dirname $SCRIPT_DIR)"
TESTS=$1
TESTS=${TESTS:-"flickr.com yahoo.com instagram.com"}
TIMES=$2
TIMES=${TIMES:-1}
source "$SCRIPT_DIR/vars"

# Check that emulator/device is connected
$SCRIPT_DIR/check_connection.sh || exit 1

echo -e "\nClosing any open Firefox..."
adb shell "am force-stop $PACKAGE_NAME" >/dev/null

echo -e "\nSetting screen brightness.."
adb shell "settings put system screen_off_timeout 1800000" >/dev/null
adb shell "settings put system screen_brightness 255" >/dev/null
adb shell "settings put system screen_auto_brightness 0" >/dev/null

echo -e "\nUploading test scripts..."
$ROOT_DIR/scripts/upload_test_scripts.sh

echo -e "\nSleeping for ${BASE_WAIT_TIME}s..."
sleep $BASE_WAIT_TIME

echo -e "\nLaunching Firefox..."
adb shell "am start $PACKAGE_NAME"

echo -e "\nRunning test(s) $TIMES times...\n"

for iteration in $(seq 1 $TIMES); do

  echo -e "\nITERATION: $iteration"

  for site in $TESTS; do

    echo "Sleep for ${BASE_NAVIGATION_WAIT_TIME}s..."
    sleep $BASE_NAVIGATION_WAIT_TIME

    echo -e "Browsing $site..."

    bnwt=$BASE_NAVIGATION_WAIT_TIME
    btwt=$BASE_TAP_WAIT_TIME
    bswt=$BASE_SWIPE_WAIT_TIME
    bsnwt=$BASE_SUBPAGE_NAVIGATION_WAIT_TIME

    if [[ $site == "weather.com" ]]; then
      bnwt=$((bnwt * 2))
    fi

    BASE_NAVIGATION_WAIT_TIME=$bnwt $SCRIPT_DIR/navigate_to.sh "https://$site"

    adb shell "
      cd $DEST_DIR/tests && \
      BASE_TAP_WAIT_TIME=$btwt \
      BASE_SWIPE_WAIT_TIME=$bswt \
      BASE_SUBPAGE_NAVIGATION_WAIT_TIME=$bsnwt \
      sh $site.sh
    "
    $SCRIPT_DIR/navigate_to.sh "about:blank"
    echo "Done browsing $site."
  done

done

echo -e "\nDone browsing."

echo "Sleep for ${BASE_NAVIGATION_WAIT_TIME}s..."
sleep $BASE_NAVIGATION_WAIT_TIME

if [[ CLOSE_BROWSER_ON_COMPLETE == 1 ]]; then
  echo -e "\nClosing Firefox..."
  adb shell "am force-stop $PACKAGE_NAME" >/dev/null

  echo -e "\nSleeping for $(($BASE_WAIT_TIME))s..."
  sleep $BASE_WAIT_TIME
fi
