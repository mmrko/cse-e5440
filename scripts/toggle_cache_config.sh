#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

source "$SCRIPT_DIR/vars"

cache_config_flags="browser.cache.check_doc_frequency browser.cache.disk.enable browser.cache.memory.enable"

adb shell "am start $PACKAGE_NAME" >/dev/null && adb shell sleep 2
BASE_NAVIGATION_WAIT_TIME=1 $SCRIPT_DIR/navigate_to.sh "about:config"

for flag in $cache_config_flags; do
  adb shell input tap 700 300  # select search field
  adb shell input text $flag
  adb shell sleep 1
  adb shell input tap 500 500  # select flag

  # input flag value
  if [[ $flag == "browser.cache.check_doc_frequency" ]]; then
    adb shell input tap 300 600
    sleep 1
    adb shell input keyevent KEYCODE_DEL
    adb shell input text "1"
  else
    adb shell input tap 1000 600
  fi

  adb shell input tap 1000 300 # clear search field
  adb shell sleep 1
done
