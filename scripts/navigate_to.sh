#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
address=$1

adb shell "input tap $(( 500 * $xM + $xO )) $(( 150 * $yM + $yO ))" >/dev/null
adb shell "input text $address" >/dev/null
adb shell "input keyevent KEYCODE_ENTER" >/dev/null
adb shell "sleep $BASE_NAVIGATION_WAIT_TIME" >/dev/null
