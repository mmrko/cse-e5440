#!/bin/sh
# Flickr

alias tap="input tap"
alias swipe="input touchscreen swipe"
alias navigate_to="sh ./helpers/navigate_to"

swipe_params="450 1050 250 250 100"
base_url="https://flickr.com"

navigate_to "$base_url/explore"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/photos/tags/primavera"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/photos/tags/amazing"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/photos/tags/rural"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/photos/tags/brazil"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
