#!/usr/bin/env bash

set -e

# Install Node runtime
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -y nodejs

npm install -g bower


