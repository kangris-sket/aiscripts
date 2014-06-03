#!/bin/bash
appid=mark-ai
appinventor=/Users/mark/android/appinventor-sources/appinventor
SDK=/Users/mark/android/appengine-java-sdk-1.9.5

$SDK/bin/appcfg.sh -A $appid update $appinventor/appengine/build/war/

