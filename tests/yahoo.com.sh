#!/bin/sh
# Yahoo

alias tap="input tap"
alias swipe="input touchscreen swipe"
alias navigate_to="sh ./helpers/navigate_to"

swipe_params="450 1050 250 250 150"
base_url="https://yahoo.com"

swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/tech"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/news"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/style"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
