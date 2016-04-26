#!/bin/sh
#Yahoo
#540 x 960
input tap 200 50
sleep 5
input text "https://www.yahoo.com/"
sleep 5
input keyevent KEYCODE_ENTER
sleep 15
input touchscreen swipe 200 700 200 400 # Replace with better swipe-down command
sleep 5
input touchscreen swipe 200 400 200 700 # Replace with better swipe-up command
sleep 5
input tap 45 115 #Menu 70 300
sleep 5
input tap 145 560 #Sports 140 1200
sleep 15
input touchscreen swipe 200 700 200 400 # Replace with better swipe-down command
sleep 5
input touchscreen swipe 200 400 200 700 # Replace with better swipe-up command
sleep 5