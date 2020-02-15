#!/usr/bin/env bash
source /home/pi/.virtualenvs/ga/bin/activate

cd /home/pi/google_assistant
for (( ; ; ))
do

   python pushtotalk.py
   
done
