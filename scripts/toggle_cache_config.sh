#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

source "$SCRIPT_DIR/vars"

cache_config_flags="browser.cache.check_doc_frequency browser.cache.disk.enable browser.cache.memory.enable"

adb $DEVICE shell "am start $PACKAGE_NAME" >/dev/null && adb $DEVICE shell sleep 2
BASE_NAVIGATION_WAIT_TIME=3 $SCRIPT_DIR/navigate_to.sh "about:config"

for flag in $cache_config_flags; do
  adb $DEVICE shell input tap 700 300 && sleep 1 # select search field
  adb $DEVICE shell input text $flag && sleep 1
  adb $DEVICE shell input tap 500 500 && sleep 1 # select flag

  # input flag value
  if [[ $flag == "browser.cache.check_doc_frequency" ]]; then
    adb $DEVICE shell input tap 300 600 && sleep 1
    adb $DEVICE shell input keyevent KEYCODE_DEL && sleep 1
    adb $DEVICE shell input text "1" && sleep 1
  else
    adb $DEVICE shell input tap 1000 600 && sleep 1
  fi

  adb $DEVICE shell input tap 1000 300 && sleep 1 # clear search field
done
