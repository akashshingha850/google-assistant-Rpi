#!/bin/bash

if [ $# -eq 0 ]; then
  DATA_DIR="/home/pi/google_assistant"
else
  DATA_DIR="$1"
fi

#setup virtual env (ie. gv
mkvirtualenv gv

# Install required packages
sudo apt-get install portaudio19-dev libffi-dev libssl-dev
pip install --upgrade google-assistant-sdk[samples]
pip install RPi.GPIO



echo -e "Files downloaded to ${DATA_DIR}"
