#!/bin/sh
#Twitter

input tap {{ 200 * xM + xO }} {{ 100 * yM + yO }}
sleep 5
input text "https://twitter.com/"
sleep 5
input keyevent KEYCODE_ENTER
sleep 5
input tap 700 200 #Menu 984 300
sleep 5
input tap 350 800 #About 492 1200
sleep 5