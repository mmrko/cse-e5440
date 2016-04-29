#!/bin/sh
# Instagram

alias tap="input tap"
alias swipe="input touchscreen swipe"
alias text="input text"
alias navigate_to="sh ./helpers/navigate_to"

base_url="https://instagram.com"
swipe_params="250 1050 250 250 200"

navigate_to "$base_url/dano_compel/"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
tap 450 1550
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/binghuiliu/"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
tap 450 1550
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/jordanspieth/"
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
tap 450 1550
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/warriors/"
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
tap 450 1550
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME

navigate_to "$base_url/nba/"
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
tap 450 1550
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
swipe $swipe_params && sleep $BASE_SWIPE_WAIT_TIME
