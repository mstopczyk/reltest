#!/bin/bash

#last=`cat version`
#last=$((last + 1))

git flow release start 1.0.14
#echo "$last" >version
#git commit -am "update version"
git flow release publish 1.0.14
git flow release finish -F -p  1.0.14 -mversion
git push && git push --tags

