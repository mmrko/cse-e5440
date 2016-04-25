#!/usr/bin/env bash


# For 1080x1920. Not tested in practice

input tap 281 150 # 281 150
sleep 5
input text "https://twitter.com/"
sleep 5
input keyevent 66
sleep 5
input tap 984 300 #Menu 984 300
sleep 5
input tap 492 1200 #About 492 1200
sleep 5

#Yahoo
input tap 281 150 # 281 150
sleep 5
input text "https://www.yahoo.com/"
sleep 5
input keyevent 66
sleep 5
input tap 70 300 #Menu 70 300
sleep 5
input tap 140 1200 #Sports 140 1200
sleep 5

#Flickr
input tap 281 150 # 281 150
sleep 5
input text "https://flickr.com"
sleep 5
input keyevent 66
sleep 5
input tap 70 300 # 70 300
sleep 5
input tap 70 450 # Explore 70 450

#Weather
#input tap 281 150 # 281 150
#sleep 5
#input text "https://weather.com"
#sleep 5
#input keyevent 66
#sleep 5
#input tap 1055 300 #Menu? 1055 300
#sleep 5
#input tap 140 1200