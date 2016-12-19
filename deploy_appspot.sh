#!/bin/bash
#appid=mark-ai
appid=ai2snapshot

BASEDIR=/Users/mark/android

appinventor=$BASEDIR/appinventor-sources/appinventor
SDK=$BASEDIR/appengine-java-sdk-1.9.37

echo "##################################################"
branch=`git -C $appinventor rev-parse --abbrev-ref HEAD`
echo "Current branch is: $branch" 
echo "Current deploy instance is: $appid"

echo "Do you wish to add a version code?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) vim '+normal 4G12|' $appinventor/appengine/build/war/WEB-INF/appengine-web.xml; break;;
        No ) break;;
    esac
done

echo "Deploying..."
$SDK/bin/appcfg.sh -A $appid update $appinventor/appengine/build/war/

