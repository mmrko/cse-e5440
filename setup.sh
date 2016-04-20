#!/bin/sh

mkdir -p /usr/local/bin/

if [ $(uname) == "Linux" ];then
  ANDROID_SDK="$HOME/Android/Sdk"
  ln -sfv /usr/local/android-studio/bin/studio.sh /usr/local/bin/studio
else
  ANDROID_SDK="$HOME/Library/Android/sdk/"
  ln -sfv /Applications/Android\ Studio.app/Contents/MacOS/studio /usr/local/bin/studio
fi

ln -sfv $ANDROID_SDK/tools/android /usr/local/bin/
ln -sfv $ANDROID_SDK/platform-tools/adb /usr/local/bin/
