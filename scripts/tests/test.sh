#!/usr/bin/env bash


#For  768x1280, S4 is 1080x1920
#1.40625x1.5
#Twitter
input tap 200 100
sleep 5
input text "https://mobile.twitter.com/"
sleep 5
input keyevent 66
sleep 5
input tap 700 200 #Menu
sleep 5
input tap 350 800 #About
sleep 5

#Yahoo
input tap 200 100
sleep 5
input text "https://www.yahoo.com/"
sleep 5
input keyevent 66
sleep 5
input tap 50 200 #Menu
sleep 5
input tap 100 800 #Sports
sleep 5

