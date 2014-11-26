#!/bin/bash

echo "*** START RELEASE PROCESS ***"
last=`cat version`
last=$((last + 1))

git flow release start 1.0.$last
echo "$last" >version
git commit -am "update version"
git flow release publish 1.0.$last
git flow release finish -F -p -mversion 1.0.$last
git push && git push --tags

echo "*** FINISHED RELEASE PROCESS ***"


