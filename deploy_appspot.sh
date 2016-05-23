#!/bin/bash
#appid=mark-ai
appid=ai2snapshot

BASEDIR=/Users/mark/android

appinventor=$BASEDIR/appinventor-sources/appinventor
SDK=$BASEDIR/appengine-java-sdk-1.9.37

$SDK/bin/appcfg.sh -A $appid --oauth2 update $appinventor/appengine/build/war/

