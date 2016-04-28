#!/bin/sh
# weather.com

alias tap="input tap"
alias swipe="input touchscreen swipe"
alias navigate_to="sh ./helpers/navigate_to"

swipe_params_1="450 1050 250 250 300"
swipe_params_2="450 1050 250 250 100"
base_url="https://weather.com"

# trigger load of below-the-fold content
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME

# navigate to a subpage
navigate_to "$base_url/travel/news/incredible-treehouse-hotels-20130403"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

# open menu & navigate to All Photos
tap 1000 600 && sleep $((BASE_TAP_WAIT_TIME * 3))
tap 450 1400 && sleep $BASE_TAP_WAIT_TIME
tap 450 1560 && sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

# navigate to an article
swipe $swipe_params_2 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "$base_url/forecast/news/national-forecast-20141009"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME