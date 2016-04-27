#!/bin/sh
#Facebook

input tap 400 400 # usr textbox
sleep 2
input text "zoo.lutrie@gmx.de" #usr
sleep 2

input tap 400 540 # pw textbox
sleep 2

input text "frosch" # pw
sleep 2


input tap 400 600 # login button
sleep 5


input tap 200 1100 #enter no 4-digit code for phone
sleep 3

input touchscreen swipe 200 200 200 700 3000 # swipe down
sleep 2

input touchscreen swipe 200 700 200 200 3000 # swipe up
sleep 2

input tap 710 200 # enter menu
sleep 3

input tap 710 400 # choose notifications
sleep 3


input touchscreen swipe 200 200 200 700 2000 # Replace with better swipe-up command
sleep 2







