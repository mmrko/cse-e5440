#!/bin/sh
# weather.com

alias tap="input tap"
alias swipe="input touchscreen swipe"

swipe_params_1="450 1050 250 250 200"

# navigate to an article at the bottom of the page
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
tap 450 450 && sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

# open menu & navigate to All Photos
tap 1000 600 && sleep $BASE_TAP_WAIT_TIME
tap 450 1400 && sleep $BASE_TAP_WAIT_TIME
tap 450 1560 && sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

# navigate to an article
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
tap 450 1150 && sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
