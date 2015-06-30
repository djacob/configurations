#!/bin/bash

if [ -z $1 ]
then
    echo "Usage: $0 location"
    exit 1
else
    defaults write com.apple.screencapture location $1
    killall SystemUIServer
fi
