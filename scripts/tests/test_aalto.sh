# Test to be run within the device

# Navigates to aalto.fi
input tap 200 100
input text "http://aalto.fi"
input keyevent KEYCODE_ENTER # http://stackoverflow.com/questions/7789826/adb-shell-input-events
