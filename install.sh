#!/bin/bash

function get_download_version {
echo $GUNBOT_VERSION
}

DOWNLOAD_VERSION=$(get_download_version)

wget https://github.com/GuntharDeNiro/BTCT/releases/download/$DOWNLOAD_VERSION/arm.zip
unzip arm.zip
mv arm gunbot
chmod +x gunbot/gunthy-arm
