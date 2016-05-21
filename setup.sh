#!/bin/bash

mkdir -p /usr/local/bin/

if [[ -z $ANDROID_HOME ]]; then
  echo "Please first specify \$ANDROID_HOME in your shell configration (e.g. ~/.bashrc)."
  exit 1
fi

ln -sfv $ANDROID_HOME/bin/android /usr/local/bin
ln -sfv $ANDROID_HOME/bin/adb /usr/local/bin
