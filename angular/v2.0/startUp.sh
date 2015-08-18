#!/bin/bash
export NODE_HOME=/opt/nodejs
export PATH=$PATH:$NODE_HOME/bin
GIT="/usr/bin/git"
BRANCH="uat"
BOWER="/opt/nodejs/bin/bower"
NODE="/opt/nodejs/bin/node"
GULP="/opt/nodejs/bin/gulp"
cd /root/code/american-swan/modules/as-frontend
$GIT pull origin $BRANCH
$BOWER install --allow-root
$GULP build
$NODE app.js
