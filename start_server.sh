#!/bin/bash

# Starts up a local app inventor server for testing.
# Uses the App Engine dev server in the SDK

appinventor=/Users/mark/android/appinventor-sources/appinventor
SDK=/Users/mark/android/appengine-java-sdk-1.9.27

echo "Starting local App Inventor dev server"

$SDK/bin/dev_appserver.sh --port=8888 --address=0.0.0.0 $appinventor/appengine/build/war/
