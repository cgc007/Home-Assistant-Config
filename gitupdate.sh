#!/bin/bash

cd /home/pi/homeassistant
docker exec home-assistant /bin/sh -c "hass --script check_config -c /config"

git add .
git status
echo -n "Enter the Description for the Change: " [Minor Update]
read CHANGE_MSG
git commit -m "${CHANGE_MSG}"
git push origin master

exit
