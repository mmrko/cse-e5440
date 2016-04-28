#!/bin/sh
#Facebook

alias tap="input tap"
alias swipe="input touchscreen swipe"
alias text="input text"
alias navigate_to="sh ./helpers/navigate_to"

base_url="https://facebook.com"

swipe_params_1="250 1050 250 250 200"
swipe_params_2="250 250 250 1150 180"

# LOGIN
tap 400 700 && sleep $BASE_SWIPE_WAIT_TIME # usr textbox
text "zoo.lutrie@gmx.de" && sleep $BASE_SWIPE_WAIT_TIME
tap 400 800 # pw textbox
sleep $BASE_TAP_WAIT_TIME
text "frosch" # pw
input keyevent KEYCODE_ENTER
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "$base_url/lucastriefenbach/photos"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_2 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "$base_url/lucastriefenbach"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_2 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_2 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "$base_url/lucastriefenbach/friends"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_2 && sleep $BASE_SWIPE_WAIT_TIME
