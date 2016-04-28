#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
source "$SCRIPT_DIR/vars"

if [[ $ENVIRONMENT == "emulator" ]];then

  if $(adb emu >/dev/null 2>&1); then
    echo "Running $ENVIRONMENT detected: OK"
  else
    echo "Please start the emulator first: ./scripts/emulator.sh @s4"
    exit 1
  fi

else

  device_connected=`adb devices | sed -n /device$/p`
  if [[ -z $device_connected ]]; then
    echo "Device not connected! Please check your USB connection."
    exit 1
  else
    echo "Running $ENVIRONMENT detected: OK"
  fi

fi
