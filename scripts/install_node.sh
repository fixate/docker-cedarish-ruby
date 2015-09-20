#!/usr/bin/env bash

set -eo pipefail

cd /tmp
git clone --branch 'v4.1.0' --depth 1 https://github.com/nodejs/node
cd node
./configure
make
make install

cd ..
rm -rf node
