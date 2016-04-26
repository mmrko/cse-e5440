#!/bin/sh
#Weather

#540 x 960
input tap 200 100 # Do not change this
input text "https://weather.com"
input keyevent 66
sleep 15
input touchscreen swipe 200 700 200 300 # Replace with better swipe-down command
sleep 5
input touchscreen swipe 200 300 200 700 # Replace with better swipe-up command
sleep 5
input tap 455 200 #Search
input text "otaniemi"
input keyevent 66
sleep 15
input touchscreen swipe 200 700 200 300 # Replace with better swipe-down command
sleep 5
input touchscreen swipe 200 300 200 700 # Replace with better swipe-up command
sleep 5
input tap 180 260 # Hourly..
sleep 5
input touchscreen swipe 200 700 200 300 # Replace with better swipe-down command
sleep 5
input touchscreen swipe 200 300 200 700 # Replace with better swipe-up command
sleep 5