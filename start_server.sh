#!/bin/bash

# Starts up a local app inventor server for testing.
# Uses the App Engine dev server in the SDK

BASEDIR=/Users/mark/git

#appinventor=$BASEDIR/appinventor-sources/appinventor
appinventor=$BASEDIR/appinventor-research-platform/appinventor
SDK=$BASEDIR/appengine-java-sdk-1.9.54

echo "Starting local App Inventor dev server"

$SDK/bin/dev_appserver.sh --port=8888 --address=0.0.0.0 $appinventor/appengine/build/war/
