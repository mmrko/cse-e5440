#!/usr/bin/env bash

#For  768x1280, S4 is 1080x1920
# => 1.40625x1.5

#Twitter
input tap 200 100 # 281x150
sleep 5
input text "https://twitter.com/"
sleep 5
input keyevent 66
sleep 5
input tap 700 200 #Menu 984 300
sleep 5
input tap 350 800 #About 492 1200
sleep 5

#Yahoo
input tap 200 100 # 281x150
sleep 5
input text "https://www.yahoo.com/"
sleep 5
input keyevent 66
sleep 5
input tap 50 200 #Menu 70 300
sleep 5
input tap 100 800 #Sports 140 1200
sleep 5

#Flickr
input tap 200 100 # 281 150
sleep 5
input text "https://flickr.com"
sleep 5
input keyevent 66
sleep 5
input tap 50 200 # 70 300
sleep 5
input tap 50 300 # Explore 70 450

#Weather
#input tap 200 100 # 281x150
#sleep 5
#input text "https://weather.com"
#sleep 5
#input keyevent 66
#sleep 5
#input tap 750 200 #Menu? 1055x300
#sleep 5
#input tap 100 800 #...