#!/bin/sh
#Facebook
input tap 200 50
sleep 5
input text "https://fb.com"
sleep 5
input keyevent KEYCODE_ENTER
sleep 5
input tap 400 400 # 70 300
sleep 2
input text "zoo.lutrie@gmx.de"
sleep 2

input tap 400 540 # 70 300
sleep 2

input text "frosch"
sleep 2


input tap 400 600 # 70 300
sleep 5


input tap 200 1100 # 70 300
sleep 3

input touchscreen swipe 200 200 200 700 3000 # Replace with better swipe-up command
sleep 2

input touchscreen swipe 200 700 200 200 3000 # Replace with better swipe-up command
sleep 2

input tap 710 200 # 70 300
sleep 3

input tap 710 400 # 70 300
sleep 3


input touchscreen swipe 200 200 200 700 2000 # Replace with better swipe-up command
sleep 2







