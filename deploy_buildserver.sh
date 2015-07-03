#!/bin/bash

# This is to be run ON the build server machine, not the local dev machine!
# The expectation is the build server has a full git clone of the project.

appinventor=/Users/mark/android/appinventor-sources/appinventor
DEPLOY_DIR=/Users/mark/android/buildserver

rm -rf $DEPLOY_DIR
mkdir $DEPLOY_DIR

cd $appinventor/buildserver
ant BuildDeploymentTar

cp -f $appinventor/build/buildserver/BuildServer.tar $DEPLOY_DIR
cp -f $appinventor/misc/buildserver/launch-buildserver $DEPLOY_DIR

cd $DEPLOY_DIR

rm -rf lib
tar -xf BuildServer.tar
./launch-buildserver

