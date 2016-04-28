#!/bin/sh
# Instagram

alias tap="input tap"
alias swipe="input touchscreen swipe"
alias text="input text"
alias navigate_to="sh ./helpers/navigate_to"

tap 300 1100 # 70 300
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe_params_1="250 1050 250 250 200"
swipe_params_2="250 250 250 1150 180"

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "https://www.instagram.com/dano_compel/"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "https://www.instagram.com/binghuiliu/"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_2 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "https://www.instagram.com/tietokilta/"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_2 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_1 && sleep $BASE_SWIPE_WAIT_TIME
navigate_to "https://www.instagram.com/pvyshnav/"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_2 && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params_2 && sleep $BASE_SWIPE_WAIT_TIME
