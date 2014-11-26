#!/bin/bash

#last=`cat version`
#last=$((last + 1))

git flow release start 1.0.6
#echo "$last" >version
#git commit -am "update version"
git flow release publish 1.0.6
git flow release finish -F -p -m "version" 1.0.6
git push && git push --tags

