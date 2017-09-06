#!/bin/bash

cd /Applications

if  [[ $1 = "-8" ]]
then
    if [ -e Xcode_8.app ]
    then
        mv Xcode.app Xcode_7.app
        mv Xcode_8.app Xcode.app
        echo "Switched to Xcode 8"
    else
        echo "Already using Xcode 8"
    fi
elif  [[ $1 = "-7" ]]
then
    if [ -e Xcode_7.app ]
    then
        mv Xcode.app Xcode_8.app
        mv Xcode_7.app Xcode.app
        echo "Switched to Xcode 7"
    else
        echo "Already using Xcode 7"
    fi
else
    echo "usage: xcode-version -7/8"
fi

xcode-select --switch Xcode.app
