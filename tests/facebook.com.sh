#!/bin/sh
#Facebook

alias tap="input tap"
alias swipe="input touchscreen swipe"
alias text="input text"


swipe_params_1="250 1050 250 250 200"
swipe_params_2="250 250 250 1150 180"
BASE_SWIPE_WAIT_TIME="2"
BASE_SUBPAGE_NAVIGATION_WAIT_TIME="5"

tap 400 400 && sleep $BASE_SWIPE_WAIT_TIME # usr textbox
text "zoo.lutrie@gmx.de" && sleep $BASE_SWIPE_WAIT_TIME


tap 400 540 # pw textbox
sleep $BASE_SWIPE_WAIT_TIME

text "frosch" # pw
sleep $BASE_SWIPE_WAIT_TIME


tap 400 600 # login button
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME


tap 200 1100 #enter no 4-digit code for phone
sleep BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME


swipe $swipe_params_2 # swipe up
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_2 # swipe up
sleep $BASE_SWIPE_WAIT_TIME


tap 710 200 # enter menu
sleep $(($BASE_SWIPE_WAIT_TIME*2))

tap 710 600 # choose events
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME


swipe $swipe_params_1 # Replace with better swipe-up command
sleep $BASE_SWIPE_WAIT_TIME


swipe $swipe_params_2 # Replace with better swipe-up command
sleep $BASE_SWIPE_WAIT_TIME


tap 710 200 # enter menu
sleep $BASE_SWIPE_WAIT_TIME

tap 710 700 # choose pages
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME


swipe $swipe_params_1 # Replace with better swipe-up command
sleep $BASE_SWIPE_WAIT_TIME


swipe $swipe_params_2 # Replace with better swipe-up command
sleep $BASE_SWIPE_WAIT_TIME

tap 710 200 # enter menu
sleep BASE_SWIPE_WAIT_TIME

tap 710 800 # choose trending
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME


swipe $swipe_params_1 # Replace with better swipe-up command
sleep $BASE_SWIPE_WAIT_TIME


swipe $swipe_params_2 # Replace with better swipe-up command
sleep $BASE_SWIPE_WAIT_TIME






