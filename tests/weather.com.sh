#!/bin/sh
# weather.com

alias tap="input tap"
alias swipe="input touchscreen swipe"

# navigate to an article at the bottom of the page
swipe 450 1050 250 250 200
sleep $BASE_INTERACTION_WAIT_TIME
swipe 450 1050 250 250 200
sleep $BASE_INTERACTION_WAIT_TIME
swipe 450 1050 250 250 200
sleep $BASE_INTERACTION_WAIT_TIME
swipe 450 1050 250 250 200
sleep $BASE_INTERACTION_WAIT_TIME
tap 450 540
sleep $BASE_NAVIGATION_WAIT_TIME

# open menu & navigate to All Photos
tap 1000 490
sleep $BASE_INTERACTION_WAIT_TIME
tap 450 1400
sleep $BASE_INTERACTION_WAIT_TIME
tap 450 1560
sleep $BASE_NAVIGATION_WAIT_TIME

# navigate to an article
swipe 450 1050 250 250 100
tap 450 1150
sleep $BASE_NAVIGATION_WAIT_TIME
