#!/bin/bash

if [ $# -eq 0 ]; then
  DATA_DIR="/home/pi/google_assistant"
else
  DATA_DIR="$1"
fi

cd /home/pi/google_assistant
#setup virtual env (ie. ga
mkvirtualenv ga
# Install required packages

sudo apt-get install portaudio19-dev libffi-dev libssl-dev -y
pip install --upgrade google-assistant-sdk[samples] 
pip install RPi.GPIO

chmod +x google_assistant.sh

echo -e "Files downloaded to ${DATA_DIR}"
