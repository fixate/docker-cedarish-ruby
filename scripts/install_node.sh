#!/usr/bin/env bash

set -eo pipefail

cd /tmp
NODE_DIST=${NODE_DIST:-node-latest}
wget http://nodejs.org/dist/${NODE_DIST}.tar.gz -O node.tar.gz
tar xvzf node.tar.gz
rm -f node.tar.gz
cd node-v*
./configure
CXX="g++ -Wno-unused-local-typedefs" make
CXX="g++ -Wno-unused-local-typedefs" make install
cd /tmp
rm -rf /tmp/node-v*
printf '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc
export PATH="node_modules/.bin:$PATH"
npm install -g npm

