#!/bin/sh

mkdir -p /usr/local/bin/

ANDROID_SDK="/usr/local/lib/android-sdk"

ln -sfv $ANDROID_SDK/tools/android /usr/local/bin/
ln -sfv $ANDROID_SDK/tools/emulator /usr/local/bin/
ln -sfv $ANDROID_SDK/platform-tools/adb /usr/local/bin/
