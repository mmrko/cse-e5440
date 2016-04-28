#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
ROOT_DIR="$(dirname $SCRIPT_DIR)"

source "$SCRIPT_DIR/vars"

# Check that emulator/device is connected
$SCRIPT_DIR/check_connection.sh || exit 1

case "$ENVIRONMENT" in
 emulator) ARCHITECTURE="i386" ;;
 *) ARCHITECTURE="arm" ;;
esac

APK_FILE="fennec-$BROWSER_VERSION.en-US.android-$ARCHITECTURE.apk"

echo "Uninstalling existing Firefox (if any)..."
adb uninstall "$PACKAGE_NAME"

echo "Installing $APK_FILE..."
adb install "$ROOT_DIR/builds/$APK_FILE"
