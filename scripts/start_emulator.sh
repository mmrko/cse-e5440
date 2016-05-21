#!/bin/bash

if [[ -z $ANDROID_HOME ]]; then
  echo "Please first specify \$ANDROID_HOME in your shell configration (e.g. ~/.bashrc)."
  exit 1
fi

$ANDROID_HOME/bin/emulator $@
