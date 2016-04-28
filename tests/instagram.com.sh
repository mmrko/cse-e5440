#!/bin/sh
# Instagram

alias tap="input tap"
alias swipe="input touchscreen swipe"
alias text="input text"
alias navigate_to="sh ./helpers/navigate_to"

swipe_params_1="250 1050 250 250 200"

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "https://www.instagram.com/dano_compel/"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
tap 450 1550
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "https://www.instagram.com/binghuiliu/"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
tap 450 1550
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "https://www.instagram.com/tietokilta/"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
tap 450 1550
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "https://www.instagram.com/pvyshnav/"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
