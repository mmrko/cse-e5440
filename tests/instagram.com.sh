#!/bin/sh
#Instagram



alias tap="input tap"
alias swipe="input touchscreen swipe"
alias text="input text"
alias navigate_to="sh ./helpers/navigate_to"


#swipe_params_1="250 1050 250 250 200"
#swipe_params_2="250 250 250 1150 180"
BASE_SWIPE_WAIT_TIME=$(($BASE_SWIPE_WAIT_TIME*3))
#BASE_SUBPAGE_NAVIGATION_WAIT_TIME=$(($BASE_SWIPE_WAIT_TIME*2))




#input tap 200 50
#sleep 5
#input text "https://www.instagram.com"
#sleep 5
#input keyevent KEYCODE_ENTER
#sleep 5


tap 300 1100 # 70 300
sleep $BASE_SUBPAGE_NAVIGATION_WAIT_TIME




swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME


swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME


navigate_to "https://www.instagram.com/dano_compel/"
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME






navigate_to "https://www.instagram.com/binghuiliu/"
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME



navigate_to "https://www.instagram.com/tietokilta/"
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME



navigate_to "https://www.instagram.com/pvyshnav/"
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME

swipe $swipe_params_1 # swipe down
sleep $BASE_SWIPE_WAIT_TIME

