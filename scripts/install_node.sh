#!/usr/bin/env bash

set -eo pipefail

cd /tmp
wget http://nodejs.org/dist/node-latest.tar.gz
tar xvzf node-latest.tar.gz
rm -f node-latest.tar.gz
cd node-v*
./configure
CXX="g++ -Wno-unused-local-typedefs" make
CXX="g++ -Wno-unused-local-typedefs" make install
cd /tmp
rm -rf /tmp/node-v*
printf '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc
export PATH="node_modules/.bin:$PATH"
npm install -g npm

