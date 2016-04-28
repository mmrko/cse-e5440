#!/bin/sh
# Twitter

alias tap="input tap"
alias swipe="input touchscreen swipe"
alias navigate_to="sh ./helpers/navigate_to"

swipe_params="450 1050 250 250 150"
base_url="https://twitter.com"

swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/search"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/search?q=obama"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/search?q=aalto"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME


