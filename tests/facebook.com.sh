#!/bin/sh
#Facebook

alias tap="input tap"
alias swipe="input touchscreen swipe"
alias text="input text"
alias navigate_to="sh ./helpers/navigate_to"


swipe_params_1="250 1050 250 250 200"
swipe_params_2="250 250 250 1150 180"
BASE_SWIPE_WAIT_TIME="2"
BASE_SUBPAGE_NAVIGATION_WAIT_TIME="3"

#tap 400 700 && sleep $BASE_SWIPE_WAIT_TIME # usr textbox

#text "zoo.lutrie@gmx.de" && sleep $BASE_SWIPE_WAIT_TIME


tap 400 800 # pw textbox
sleep $BASE_SWIPE_WAIT_TIME

text "frosch" # pw
sleep $BASE_SWIPE_WAIT_TIME


tap 400 1000 # login button
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME


#tap 200 1800 #enter no 4-digit code for phone
#sleep BASE_SUBPAGE_NAVIGATION_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME


swipe $swipe_params_2 # swipe up
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_2 # swipe up
sleep $BASE_SWIPE_WAIT_TIME


navigate_to "https://www.facebook.com/lucastriefenbach/photos"
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 
sleep $BASE_SWIPE_WAIT_TIME


swipe $swipe_params_2 
sleep $BASE_SWIPE_WAIT_TIME



navigate_to "https://www.facebook.com/lucastriefenbach"
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 
sleep $BASE_SWIPE_WAIT_TIME


swipe $swipe_params_2 
sleep $BASE_SWIPE_WAIT_TIME



navigate_to "https://www.facebook.com/lucastriefenbach/friends"
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 
sleep $BASE_SWIPE_WAIT_TIME


swipe $swipe_params_2 
sleep $BASE_SWIPE_WAIT_TIME





#tap 710 200 # enter menu
#sleep $BASE_SWIPE_WAIT_TIME

#tap 710 800 # choose pages
#sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME


#swipe $swipe_params_1 # Replace with better swipe-up command
#sleep $BASE_SWIPE_WAIT_TIME


#swipe $swipe_params_2 # Replace with better swipe-up command
#sleep $BASE_SWIPE_WAIT_TIME

#tap 710 200 # enter menu
#sleep BASE_SWIPE_WAIT_TIME

#tap 710 800 # choose trending
#sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME


#swipe $swipe_params_1 # Replace with better swipe-up command
#sleep $BASE_SWIPE_WAIT_TIME


#swipe $swipe_params_2 # Replace with better swipe-up command
#sleep $BASE_SWIPE_WAIT_TIME






