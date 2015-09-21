#!/usr/bin/env bash

set -e

# Add app user
adduser --disabled-password --home=/app --gecos "" appuser

apt-get update

# Packages needed to build Ruby
DEPS='autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev imagemagick rlwrap'
apt-get install -y $DEPS

# Clean up
apt-get clean
rm -rf /var/lib/apt/lists/*


