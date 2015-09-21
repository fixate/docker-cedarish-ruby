#!/usr/bin/env bash

set -eo pipefail

cd /tmp

wget https://deb.nodesource.com/node_0.12/pool/main/n/nodejs/nodejs_0.12.7-1nodesource1~trusty1_amd64.deb -O node.deb
dpkg -i node.deb
rm -f node.deb

npm install -g node-gyp
npm cache clear
# node-gyp configure
