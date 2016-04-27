#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
ROOT_DIR="$(dirname $SCRIPT_DIR)"

source "$SCRIPT_DIR/vars"

# Check that emulator/device is connected
ENVIRONMENT=$ENVIRONMENT $SCRIPT_DIR/check_connection.sh || exit 1

case "$ENVIRONMENT" in
 emulator) ARCHITECTURE="i386" ;;
 *) ARCHITECTURE="arm" ;;
esac

APK_FILE="fennec-$BROWSER_VERSION.multi.android-$ARCHITECTURE.apk"

echo "Uninstalling existing Firefox build (if any)..."
adb uninstall "$PACKAGE_NAME" >/dev/null 2>&1

echo "Installing $APK_FILE..."
adb install "$ROOT_DIR/builds/$APK_FILE"
