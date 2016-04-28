#!/bin/sh
#Yahoo

navigate_to "https://www.yahoo.com/"
$((BASE_TAP_WAIT_TIME * 3))

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "http://sports.yahoo.com/"
$((BASE_TAP_WAIT_TIME * 3))

navigate_to "http://sports.yahoo.com/news"
$((BASE_TAP_WAIT_TIME * 3))

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "http://sports.yahoo.com/soccer/premier-league/"
$((BASE_TAP_WAIT_TIME * 3))