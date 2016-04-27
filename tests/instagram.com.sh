#!/bin/sh
#Instagram


input tap 200 50
sleep 5
input text "https://www.instagram.com"
sleep 5
input keyevent KEYCODE_ENTER
sleep 5
input tap 300 750 # 70 300
sleep 2


input touchscreen swipe 200 200 200 700 3000 # swipe down
sleep 2

input touchscreen swipe 200 200 200 700 3000 # swipe down 
sleep 2

input touchscreen swipe 200 200 200 700 3000 # swipe down
sleep 2




input touchscreen swipe 200 700 200 200 3000 #swipe up
sleep 2

input touchscreen swipe 200 700 200 200 3000 # swipe up
sleep 2

input touchscreen swipe 200 700 200 200 3000 # swipe up
sleep 2

input tap 200 300
sleep 2

