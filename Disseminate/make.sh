#!/bin/bash

APPDMG=`which appdmg`
if [[ -z $APPDMG ]]; then
   echo "Run npm install -g appdmg"
   exit 1
fi

if [[ ! -f ~/dev/Disseminate/icons/AppIcon.icns ]]; then
   echo "No ~/dev/Disseminate/icons/AppIcon.icns"
   exit 1
fi

if [[ ! -d  ~/dev/Disseminate/Disseminate.app ]]; then
    echo "No ~/dev/Disseminate/Disseminate.app"
    exit 1
fi

cp ~/dev/Disseminate/icons/AppIcon.icns Disseminate.icns
rm -rf Disseminate.app
cp -Rv ~/dev/Disseminate/Disseminate.app .

$APPDMG ./Disseminate.json ./Disseminate.dmg
