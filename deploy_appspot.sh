#!/bin/bash
#appid=mark-ai
appid=ai2snapshot
appinventor=/Users/mark/android/appinventor-sources/appinventor
SDK=/Users/mark/android/appengine-java-sdk-1.9.27

$SDK/bin/appcfg.sh -A $appid --oauth2 update $appinventor/appengine/build/war/

