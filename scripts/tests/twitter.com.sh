#!/bin/sh
#Twitter
#540 x 960
input tap 200 50
input text "https://twitter.com/"
input keyevent KEYCODE_ENTER
sleep 15
input tap 500 100 #Menu
sleep 15
input tap 300 580 #Search
sleep 15
input tap 250 360 #Search field
input text "obama"
input keyevent KEYCODE_ENTER
sleep 15
input touchscreen swipe 200 700 200 300 # Replace with better swipe-down command
sleep 5
input touchscreen swipe 200 300 200 700 # Replace with better swipe-up command
sleep 5
input tap 500 100 #Menu
sleep 5
input tap 300 650 #About
sleep 15
input touchscreen swipe 200 700 200 300 # Replace with better swipe-down command
sleep 5
input touchscreen swipe 200 300 200 700 # Replace with better swipe-up command
sleep 5