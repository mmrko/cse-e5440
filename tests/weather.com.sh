#!/bin/sh
# Weather.com

BASE_SWIPE_WAIT_TIME=$((BASE_SWIPE_WAIT_TIME * 2))
BASE_SUBPAGE_NAVIGATION_WAIT_TIME=$((BASE_SUBPAGE_NAVIGATION_WAIT_TIME * 2))

alias tap="input tap"
alias swipe="input touchscreen swipe"
alias navigate_to="sh ./helpers/navigate_to"

swipe_params="450 1050 250 250 150"
base_url="https://weather.com"

# trigger load of below-the-fold content
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

# navigate to a subpage
navigate_to "$base_url/travel/news/incredible-treehouse-hotels-20130403"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

# open menu & navigate to All Photos
navigate_to "$base_url/science"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

# navigate to an article
navigate_to "$base_url/forecast/news/national-forecast-20141009"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME