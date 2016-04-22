#!/bin/sh

ENVIRONMENT=${ENVIRONMENT:-emulator}

# Check that emulator/device is connected
if [[ $ENVIRONMENT == "emulator" ]];then

  if $(adb emu >/dev/null 2>&1); then
    echo "Running $ENVIRONMENT detected: OK"
  else
    echo "Please start an emulator first and run $0 again: ./scripts/emulator.sh @s4"
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

case "$ENVIRONMENT" in
 emulator) ARCHITECTURE="i386" ;;
 *) ARCHITECTURE="arm" ;;
esac

PACKAGE_NAME="org.mozilla.fennec"
BROWSER_VERSION="48.0a1"
APK_FILE="fennec-$BROWSER_VERSION.multi.android-$ARCHITECTURE.apk"

echo "Uninstalling existing Firefox build (if any)..."
adb uninstall "$PACKAGE_NAME" >/dev/null 2>&1

echo "Installing $APK_FILE..."
adb install "builds/$APK_FILE"
