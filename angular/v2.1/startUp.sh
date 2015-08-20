#!/bin/bash
set -x
exec &2> /tmp/startup.log
export NODE_HOME=/opt/nodejs
export PATH=$PATH:$NODE_HOME/bin
GITREPO="git@gitlab.intelligrape.net:intelligrape/american-swan.git"
GIT="/usr/bin/git"
BRANCH="uat"
BOWER="/opt/nodejs/bin/bower"
NODE="/opt/nodejs/bin/node"
NPM="/opt/nodejs/bin/npm"
GULP="/opt/nodejs/bin/gulp"
cd /root/code/
rm -rf /root/code/*
$GIT clone $GITREPO
cd /root/code/american-swan/modules/as-frontend
rm -rf node_modules
$GIT checkout $BRANCH
$GIT pull origin $BRANCH
$NPM install
$BOWER install --allow-root
$GULP build
$NODE app.js &
tail -f /tmp/startup.log
